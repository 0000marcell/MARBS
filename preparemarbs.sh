#!/usr/bin/bash

sudo pacman -Sy ttf-fira-code openssh zip unzip
curl https://github.com/0000marcell/MARBS/archive/refs/heads/master.zip
unzip ./master.zip -o marbs
cd marbs
