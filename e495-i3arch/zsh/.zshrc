# Created by newuser for 5.6.2
alias vim=nvim

source /home/panther/.zprezto/init.zsh
autoload -Uz promptinit
promptinit
prompt agnoster
alias i3edit="nvim ~/.config/i3/config"
export PATH="$PATH:/home/panther/go/bin/"
export GOPATH="$HOME/go"
export TERMINAL=kitty

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
	prompt minimal
fi

alias smount="sshfs panther@192.168.1.36:/mnt/NotEnoughDisks2 /home/panther/Server"
alias xcopy="xclip -in -selection clipboard"
alias history="cat ~/.zhistory"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH:$HOME/.local/bin"

alias ls='exa'
alias ll='exa -l'
alias lll='exa -l | less'
alias lla='exa -la'
alias llt='exa -T'
alias llfu='exa -bghHliS --git'

export GO111MODULE=auto
# export MOZ_ENABLE_WAYLAND=1
