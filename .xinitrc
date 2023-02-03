#!/usr/bin/zsh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

mpd &
picom &

xmodmap $HOME/.Xmodmap &
xrandr --dpi 86
xrdb -merge $HOME/.Xresources &
xsetroot -cursor_name left_ptr &
xset s 0 0
xset dpms 0 0 0

exec bspwm
