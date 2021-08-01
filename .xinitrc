#!/bin/sh
# loads xmodmap
[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
# loads xresources
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

# set key input rate
xset r rate 200 25

xcompmgr &

exec i3
