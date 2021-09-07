#!/usr/bin/bash

sudo pacman -Sy ttf-fira-code openssh zip unzip
curl https://codeload.github.com/0000marcell/MARBS/zip/heads/master -o marbs.zip
unzip ./master.zip
cd MARBS-master
