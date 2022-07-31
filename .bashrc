# Environment variable used by a lot of different programs
export TERMINAL="st"
export EDITOR="nvim"
export BROWSER="brave"

# copy uses xclip and copies to the clipboard
alias copy="xclip -selection clipboard "
# syntax highlight for cat
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.
# default pdf viewer
alias pdf='zathura'

# Quickly open a file in VIM
vf() { $EDITOR $(fzf) ;}

# uses $c, $s, and $d to quickly access these folders
export c="/home/mmc/.config"
export s="/home/mmc/scripts"
export d="/home/mmc/Downloads"

# add scripts folder to path
# add script folder to path
export PATH="$PATH:$HOME/scripts"
