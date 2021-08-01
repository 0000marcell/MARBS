export TERMINAL="st"
# single tap to click thinkpad
#xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
# natural scrolling
#xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1
# use single tap to click macbook
xinput set-prop "bcm5974" "libinput Tapping Enabled" 1
# natural scrolling macbook
xinput set-prop "bcm5974" "libinput Natural Scrolling Enabled" 1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export EDITOR="nvim"
