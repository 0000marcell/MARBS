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
#xinput set-prop "bcm5974" "libinput Tapping Enabled" 1
# natural scrolling macbook
#xinput set-prop "bcm5974" "libinput Natural Scrolling Enabled" 1

# set key input rate
xset r rate 200 25

# script to checkbatcapacity on thinkpad, you will need to change the script in your macine
~/scripts/checkbatcapacity &
# default notification 
dunst &

# composite for xorg used to make st terminal transparent
xcompmgr &

exec i3
