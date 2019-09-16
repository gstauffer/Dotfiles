# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Name of theme to be used.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Sourced scripts
source $ZSH/oh-my-zsh.sh

# Always run tmux, opening main session - https://unix.stackexchange.com/a/113768
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	exec tmux new-session -A -s main 
fi

# Aliases
alias l="ls -lah"
alias weather="curl v2.wttr.in/Hesston"
