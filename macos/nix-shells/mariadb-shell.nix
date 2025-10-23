{ pkgs ? import <nixpkgs> {} }:


pkgs.mkShell {
  name = "mariadb-shell";

  buildInputs = [
    pkgs.mariadb
  ];

  shellHook = ''
    # Paths
    export DB_DIR="$HOME/.databases/mariadb/data"
    export SOCKET_PATH="/tmp/mariadb.sock"
    export DB_PORT=3308

    # Aliases
    alias stop='echo "🛑 Stopping MariaDB..."; pkill mariad || true'
    alias start='echo "🚀 Starting MariaDB on port $DB_PORT..."; mariadbd --datadir=$DB_DIR --socket=$SOCKET_PATH --port=$DB_PORT &'

    # Ensure database directory exists
    mkdir -p "$DB_DIR"

    # Kill MariaDB on shell exit
    trap 'echo "🛑 Stopping MariaDB..."; pkill mariadb || true' EXIT

    clear
    echo "🐬 MariaDB dev shell ready!"
    echo "🏠 Port: $DB_PORT | Socket: $SOCKET_PATH"
    echo "📀 Aliases: start, stop"
    echo ""

    # Start MariaDB automatically
    echo "🚀 Starting MariaDB on port $DB_PORT..."
    mariadbd --datadir="$DB_DIR" --socket="$SOCKET_PATH" --port="$DB_PORT" &

    # Customize prompt so you always know you're in the MariaDB shell
    export PS1="🐬 [MariaDB shell] \w \$ "
    
    # Remember PID so we can stop it later
    export MARIADB_PID=$!

    # exec $SHELL
  '';
}
