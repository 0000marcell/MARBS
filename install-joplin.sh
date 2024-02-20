curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

nvm install node

# automatically load node version from .nvmrc
echo '_nvmrc_hook() {
  if [[ $PWD == $PREV_PWD ]]; then
    return
  fi
 
  PREV_PWD=$PWD
  [[ -f ".nvmrc" ]] && nvm use
}
 
if ! [[ "${PROMPT_COMMAND:-}" =~ _nvmrc_hook ]]; then
  PROMPT_COMMAND="_nvmrc_hook${PROMPT_COMMAND:+;$PROMPT_COMMAND}"
fi' >> $HOME/.bashrc

NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin
sudo ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin

cp ./keymap.json ~/.config/joplin
