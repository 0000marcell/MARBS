# this is deprecated i'm installing in each file install-x, install-i3 etc...

# sudo pacman -S X xmodmap nvim joplin chromium st patch feh locate xcompmgr 

# joplin install joplin we need to install nvm and then node and then joplin
# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# install plug for nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# loads nvm 
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install node

# I don't think this executable works when you are not the root 
NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin
sudo ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin

#copy kaymap.json from this file to joplin configure path
cp ./keymap.json ~/.config/joplin

# on the mac you need to press alt to copy alt+v alt+c to the terminal

# sound
# alsa is already installed by default
# install alsa-utils to use amixer
pacman -Sy alsa-utils

# activate sound channels
amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

# copy all the config files to it's destinies
