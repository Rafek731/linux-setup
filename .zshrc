# Zsh config
export ZSH="$HOME/.oh-my-zsh"

export VIRTUAL_ENV_DISABLE_PROMPT=1
ZSH_THEME="custom-gnzh"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
CASE_SENSITIVE="true"

plugins=(
	git 
	colored-man-pages 
	colorize
	zsh-autosuggestions
	zsh-autocomplete
	zsh-syntax-highlighting
	pyenv
	virtualenv
)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
  	export EDITOR='nvim'
fi

# Restore standard Tab completion behavior for zsh-autocomplete
bindkey '\t' expand-or-complete

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 13
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'
zstyle ':completion:*' completer _expand _complete _ignored

# aliases
alias ll="ls -lAFh"
alias la="ls -AFh"
alias l="ls -F"

fastfetch -c "examples/10.jsonc"
