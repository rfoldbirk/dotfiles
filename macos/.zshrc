# ----- alias -----------------------------------------

# essentials
alias cd="z"
alias b='cd ..'
alias ezsh='hx ~/.zshrc'
alias enix='hx ~/.config/home-manager/home.nix'
alias rnix='home-manager switch'
alias rzsh='source ~/.zshrc'
alias lg='lazygit'

# databaser
alias mysql='nix-shell ~/.dotfiles/macos/nix-shells/mysql-shell.nix';
alias maria='nix-shell ~/.dotfiles/macos/nix-shells/mariadb-shell.nix';

# eza (bedre ls)
alias ls="eza --color=always --icons=always --no-time --no-user --no-permissions --no-filesize"

# bat (bedre cat)
alias bat="bat --theme='Solarized (dark)'"


# ----- config ----------------------------------------


autoload -Uz vcs_info
autoload -U compinit
compinit
setopt prompt_subst

precmd() { vcs_info }

# Enable git support and format the output
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes false
zstyle ':vcs_info:git:*' formats '%b'
zstyle ':vcs_info:git:*' actionformats '%b|%a'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

PS1='%F{blue}%B%~%b%f %F{blue}[ ${vcs_info_msg_0_} ]%f '

export EDITOR="hx"

# zoxide (better cd)
eval "$(zoxide init zsh)"

# fzf (fuzzy finder)
eval "$(fzf --zsh)"
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"

  # --preview 'bat -n --color=always {}'
export FZF_CTRL_R_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"
  

# hemmeligt 🤫
if [ -f ~/.zsh-private/aliases.sh ]; then
    source ~/.zsh-private/aliases.sh
fi
