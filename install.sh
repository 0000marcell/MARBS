# X xmodmap nvim joplin chromium st

# joplin install joplin we need to install nvm and then node and then joplin
# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# loads nvm 
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install node

NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin
sudo ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin



# on the mac you need to press alt to copy alt+v alt+c to the terminal
