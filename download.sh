#!/usr/bin/bash

curl https://codeload.github.com/0000marcell/MARBS/zip/heads/master -o marbs.zip
sudo pacman -S unzip make pgk-config c99 openssh
unzip ./marbs.zip

cd MARBS-heads-master
bash install-x.sh
bash install-i3.sh
bash install-joplin.sh
bash install-network.sh
bash install-audio.sh
bash install-nvim.sh
bash install-st.sh
bash install-postgres.sh
bash install-utils.sh
