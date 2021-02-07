PATH="/Library/Frameworks/Python.framework/Versions/3.1/bin:${PATH}"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PATH=/usr/local/bin:$PATH
export HOMEBREW_NO_AUTO_UPDATE=1

# insensitiv autocompletion
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'


TYPEWRITTEN_SYMBOL="🚀"
TYPEWRITTEN_DISABLE_RETURN_CODE=true
TYPEWRITTEN_GIT_RELATIVE_PATH=true

# pure eller typewritten
fpath+=$HOME/.zsh/typewritten
autoload -U promptinit; promptinit
prompt typewritten




function ezsh() {
  nvim ~/.zshrc
}

function rzsh() {
  source ~/.zshrc
}


r_last_dir=$(pwd)
r_save_dir=$(pwd)
function b() {
  r_last_dir=$(pwd)
  cd ..
}

function sd() {
  r_save_dir=$(pwd)
  echo "-- Path has been saved"
}

function u() {
  cd $r_last_dir
}

function bb() {
  cd $r_save_dir
}



function gs() {
  git status
}

function gc() {
  git add .
  git commit -m $1
}

function ga() {
  git add $1
}

function gp() {
  git push
}

function gcp() {
  git add .
  git commit -m $1
  git push
}

function gcl() {
	git clone https://github.com/$1 $2 $3 $4 $5
}
