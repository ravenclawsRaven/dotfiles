# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hydrius1/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

ZSH=/home/hydrolous/.config/oh-my-zsh
ZSH_THEME="hydrius"

plugins=(git)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
	mkdir $ZSH_CACHE_DIR
fi

LS_COLORS=$LS_COLORS:'di=0;35:'; export LS_COLORS
LS_COLORS=$LS_COLORS:'ex=0;36:'; export LS_COLORS
source $ZSH/oh-my-zsh.sh
source ~/.aliases


if [[ -z $DISPALY ]] &&  [[ $(tty) = /dev/tty1 ]]; then
	exec startx
fi
