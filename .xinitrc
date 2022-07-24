#!/bin/sh
# loads xmodmap
[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
# loads xresources
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

# single tap to click thinkpad
#xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
# natural scrolling
#xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1
# use single tap to click macbook
xinput set-prop "bcm5974" "libinput Tapping Enabled" 1
# natural scrolling macbook
xinput set-prop "bcm5974" "libinput Natural Scrolling Enabled" 1

# set key input rate
xset r rate 200 25

~/scripts/checkbatcapacity &
dunst &

xcompmgr &

exec i3
