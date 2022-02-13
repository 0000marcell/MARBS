#!/usr/bin/bash

sudo cp -r ./liberation /usr/share/fonts/
fc-cache -vf
sudo cp -r ./fontconfig ~/.config
