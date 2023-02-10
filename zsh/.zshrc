# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# 256 color environment variable
export TERM="xterm-256color"

# Name of theme to be used.
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# make a directory and cd to it
mcd() {
	test -d "$1" || mkdir "$1" && cd "$1"
}

# jump N directories up in directory tree
up() {
	ups=""
	for i in $(seq 1 $1)
	do
		ups=$ups"../"
	done
	cd $ups
}

# Aliases
alias weather="curl v2.wttr.in/Harrisonburg"
alias hg="history | grep"
alias hfzf="history | fzf"
alias rb="ruby"

# PATH variable - add /usr/local/sbin for brew (Intel)
export PATH="/usr/local/sbin:$PATH"

# PATH variable - add /opt/homebrew/bin for brew (ARM)
export PATH="/opt/homebrew/bin:$PATH"

# PATH variable - add ~/.npm/bin
export PATH="$PATH:$HOME/.npm/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/opt/homebrew/opt/tcl-tk/bin:$PATH"

if [ -f "/Users/gstauffer/.config/broot/launcher/bash/br" ]; then
	source /Users/gstauffer/.config/broot/launcher/bash/br
fi

if [ -f "/home/gstauffer/.config/broot/launcher/bash/br" ]; then
	source /home/gstauffer/.config/broot/launcher/bash/br
fi

# Source local zshrc
if [ -f "$HOME/.zshrc-local" ]; then
    source ~/.zshrc-local
fi

