#!/usr/bin/bash

# install nvim
sudo pacman -Sy --noconfirm neovim xclip tree-sitter

# install lazy vim
git clone https://github.com/LazyVim/starter ~/.config/nvim
# you need to open vim then
# clone dotfiles
# cd $HOME
# rm -rf Dotfiles
# git clone https://github.com/0000marcell/Dotfiles.git
# cp Dotfiles/init.lua $HOME/init.lua
# ln -s $HOME/Dotfiles/* $HOME/.config
