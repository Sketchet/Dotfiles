#/bin/bash

userresources=$HOME/.Xresources

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

xrandr --output DP-1 --primary --right-of DVI-I-1

exec bspwm
