#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# lx-session
lx-session &

# Compositor
picom &

# Restoring wallpapers
nitrogen --restore &

# Enable numlock
numlockx &

# Swap ESC and Caps Lock
setxkbmap -option caps:escape &

# Prepend a custom font path to Xorg's list of known font paths
xset +fp /usr/share/fonts/local/

# Dwm-bar
/home/prasun/dwm-bar/dwm_bar.sh &

# Loop DWM
while true; do
	dwm >/dev/null 2>&1
done

# Run DWM
exec dwm
