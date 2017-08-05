#/bin/bash

userresources=$HOME/.Xresources

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

xrandr --output DP-1 --primary --rotate left --pos 1920x-820

exec bspwm
