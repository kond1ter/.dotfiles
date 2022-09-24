if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# exec startxfce4

xset -dpms s off
xsetroot -cursor_name left_ptr
nitrogen --restore &
picom --experimental-backends &
sxhkd &
exec bspwm 
