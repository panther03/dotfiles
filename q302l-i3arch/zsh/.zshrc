# Created by newuser for 5.6.2
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi
alias vim=nvim
source /home/panther/.zprezto/init.zsh
autoload -Uz promptinit
promptinit
prompt agnoster
