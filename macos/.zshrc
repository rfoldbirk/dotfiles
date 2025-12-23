# Start configuration added by Zim Framework install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
#

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -e

# Prompt for spelling correction of commands.
#setopt CORRECT

# Customize spelling correction prompt.
#SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# --------------------
# Module configuration
# --------------------

#
# git
#

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
#zstyle ':zim:git' aliases-prefix 'g'

#
# input
#

# Append `../` to your input for each `.` you type after an initial `..`
#zstyle ':zim:input' double-dot-expand yes

#
# termtitle
#

# Set a custom terminal title format using prompt expansion escape sequences.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# If none is provided, the default '%n@%m: %~' is used.
#zstyle ':zim:termtitle' format '%1~'

#
# zsh-autosuggestions
#

# Disable automatic widget re-binding on each precmd. This can be set when
# zsh-users/zsh-autosuggestions is the last module in your ~/.zimrc.
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=242'

# ------------------
# Initialize modules
# ------------------

ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  if (( ${+commands[curl]} )); then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  else
    mkdir -p ${ZIM_HOME} && wget -nv -O ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
fi
# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
  source ${ZIM_HOME}/zimfw.zsh init
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

zmodload -F zsh/terminfo +p:terminfo
# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
for key ('^[[A' '^P' ${terminfo[kcuu1]}) bindkey ${key} history-substring-search-up
for key ('^[[B' '^N' ${terminfo[kcud1]}) bindkey ${key} history-substring-search-down
for key ('k') bindkey -M vicmd ${key} history-substring-search-up
for key ('j') bindkey -M vicmd ${key} history-substring-search-down
unset key
# }}} End configuration added by Zim Framework install

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
alias lst="ls -T"

# bat (bedre cat)
alias bat="bat --theme='Solarized (dark)'"


# ----- config ----------------------------------------


# autoload -Uz vcs_info
# autoload -U compinit
# compinit
# setopt prompt_subst

# precmd() { vcs_info }

# Enable git support and format the output
# zstyle ':vcs_info:*' enable git
# zstyle ':vcs_info:git:*' check-for-changes false
# zstyle ':vcs_info:git:*' formats '%b'
# zstyle ':vcs_info:git:*' actionformats '%b|%a'
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# PS1='%F{blue}%B%~%b%f %F{blue}[ ${vcs_info_msg_0_} ]%f '

export EDITOR="hx"

# zoxide (better cd)
eval "$(zoxide init zsh)"

# fzf (fuzzy finder)
# eval "$(fzf --zsh)"
# export FZF_CTRL_T_OPTS="
#   --walker-skip .git,node_modules,target
#   --bind 'ctrl-/:change-preview-window(down|hidden|)'"

  # --preview 'bat -n --color=always {}'
# export FZF_CTRL_R_OPTS="
#   --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
#   --color header:italic
#   --header 'Press CTRL-Y to copy command into clipboard'"
  

# hemmeligt 🤫
if [ -f ~/.zsh-private/aliases.sh ]; then
    source ~/.zsh-private/aliases.sh
fi
