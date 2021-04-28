#!/bin/sh

xset r rate 150 200
xset -b
xrandr --output DP-4 --primary --output DP-2 --right-of DP-4 --rotate right --output HDMI-0 --right-of DP-2
xbindkeys
setxkbmap dvp
numlockx &
#sudo sysctl -w abi.vsyscall32=0

xrb merge ~/.Xresources
eval "$(ssh-agent)"

feh --bg-scale ~/Downloads/wallpaper.jpg

exec i3
