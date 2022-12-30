#!/usr/bin/env bash
# Terminate already running bar instances
killall polybar
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch polybar
polybar filesystem -c $HOME/.config/polybar/config.ini &
polybar memory -c $HOME/.config/polybar/config.ini &
polybar cpu -c $HOME/.config/polybar/config.ini &

polybar bspwm -c $HOME/.config/polybar/config.ini &

polybar backlight -c $HOME/.config/polybar/config.ini &
polybar pulseaudio -c $HOME/.config/polybar/config.ini &
polybar network -c $HOME/.config/polybar/config.ini &
polybar datetime -c $HOME/.config/polybar/config.ini &

polybar downspeed -c $HOME/.config/polybar/config.ini &
polybar upspeed -c $HOME/.config/polybar/config.ini &

if [[ $(xrandr -q | grep 'HDMI1 connected') ]]; then
	polybar external -c $(dirname $0)/config.ini &
fi
