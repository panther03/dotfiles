#userresources=$HOME/.Xresources
# usermodmap=$HOME/.Xmodmap
#sysresources=/etc/X11/xinit/.Xresources
#sysmodmap=/etc/X11/xinit/.Xmodmap

#  xinput disable 11
#/usr/sbin/anacron -s -t ${HOME}/.anacron/etc/anacrontab -S ${HOME}/.anacron/spool
xinput --set-prop 12 'libinput Accel Speed' 0

mpd &

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
 fi

i3
