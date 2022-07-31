export TERMINAL="st"

#mmc 
# use single tap to click
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
# natural scrolling
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export EDITOR="nvim"
export BROWSER="brave"

alias copy="xclip -selection clipboard "
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.
alias pdf='zathura'


# Quickly open a file in VIM
vf() { $EDITOR $(fzf) ;}

export c="/home/mmc/.config"
export s="/home/mmc/scripts"
export d="/home/mmc/Downloads"

# add script folder to path
export PATH="$PATH:$HOME/scripts"
