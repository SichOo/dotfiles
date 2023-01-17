#!/bin/zsh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

hsetroot -cover $HOME/Pictures/Wallpapers/Img01.png &

mpd &
picom &

xmodmap $HOME/.xmodmap &
xrdb -merge $HOME/.xresources &
xsetroot -cursor_name left_ptr &
xset s 0 0
xset dpms 0 0 0

exec bspwm
