# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# 256 color environment variable
export TERM="xterm-256color"

# Name of theme to be used.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# zsh-syntax-highlighting should be the last one listed.
plugins=(git zsh-syntax-highlighting)

# Sourced scripts
source $ZSH/oh-my-zsh.sh

# Always run tmux, opening main session - https://unix.stackexchange.com/a/113768
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	exec tmux new-session -A -s main 
fi

# Aliases
alias weather="curl v2.wttr.in/Harrisonburg"
alias hg="history | grep"
alias hfzf="history | fzf"
alias rb="ruby"
