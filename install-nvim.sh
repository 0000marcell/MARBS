#!/usr/bin/bash

# install nvim
sudo pacman -S neovim

# copy config files
cp -R ./config/nvim ~/.config

# install plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
