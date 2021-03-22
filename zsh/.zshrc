HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH="/usr/share/oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source ~/.powerlevelrc
# POWERLEVEL9K_COLOR_SCHEME='light'
ZSH_THEME="powerlevel9k"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(
	git
	docker
	docker-compose
	vi-mode
	archlinux
	history-substring-search
	colored-man-pages
)

source $ZSH/oh-my-zsh.sh



source ~/.aliases


fpath+=($ZSH/plugins/docker)
autoload -U compinit && compinit
export KEYTIMEOUT=1


## zstyle ':completion:*' completer _complete _ignored
## zstyle :compinstall filename '/home/wiebkev/.zshrc'

bindkey -v

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
