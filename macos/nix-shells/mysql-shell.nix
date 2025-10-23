{ pkgs ? import <nixpkgs> {} }:


pkgs.mkShell {
  name = "mysql-shell";

  buildInputs = [
    pkgs.mysql84
  ];

  shellHook = ''
    # Paths
    export DB_DIR="$HOME/.databases/mysql/data"
    export SOCKET_PATH="/tmp/mysql.sock"
    export DB_PORT=3306

    # Aliases
    alias stop='echo "🛑 Stopping MySQL..."; pkill mysqld || true'
    alias start='echo "🚀 Starting MySQL on port $DB_PORT..."; mysqld --datadir=$DB_DIR --socket=$SOCKET_PATH --port=$DB_PORT &'

    # Ensure database directory exists
    mkdir -p "$DB_DIR"

    # Kill MySQL on shell exit
    trap 'echo "🛑 Stopping MySQL..."; pkill mysqld || true' EXIT

    clear
    echo "🐬 MySQL dev shell ready!"
    echo "🏠 Port: $DB_PORT | Socket: $SOCKET_PATH"
    echo "📀 Aliases: start, stop"
    echo ""

    # Start MySQL automatically
    echo "🚀 Starting MySQL on port $DB_PORT..."
    mysqld --datadir="$DB_DIR" --socket="$SOCKET_PATH" --port="$DB_PORT" &

    # Customize prompt so you always know you're in the MariaDB shell
    export PS1="🐬 [MySQL shell] \w \$ "

    # Remember PID so we can stop it later
    export MYSQL_PID=$!

    # exec $SHELL
  '';
}
