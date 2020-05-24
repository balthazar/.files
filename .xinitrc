#!/bin/sh

xset r rate 150 200
xset -b
xbindkeys
setxkbmap dvp
numlockx &

xrb merge ~/.Xresources
eval "$(ssh-agent)"

feh --bg-scale ~/Downloads/wallpaper.jpg

exec i3
