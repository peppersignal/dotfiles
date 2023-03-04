#!/usr/bin/env bash


#xinitrc stuff
[[ -d /etc/X11/xinit/xinitrc.d ]] && {
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[[ -x "$f" ]] && . "$f"
	done
	unset f
}


#cursor
xsetroot -cursor_name left_ptr &

#dual-monitor setup
xrandr --output eDP-1 --left-of HDMI-1

#time prior to sleep
xset dpms 1800 1800 1800 &
xset s off &

#restore wallpaper
nitrogen --restore &

#siji
xset +fp /home/peppersignal/.local/share/fonts
xset fp rehash

#windows manager
exec bspwm
