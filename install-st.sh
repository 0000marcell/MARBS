sudo pacman -Syuu --noconfirm xorg-init xorg-xrdb xcompmgr unzip make pkg-config gcc

cp ./.Xresources ~/
xrdb ~/.Xresources

cd ~/
curl https://codeload.github.com/0000marcell/st/zip/heads/master -o ~/st.zip
unzip ~/st.zip
cd ~/st-heads-master
sudo make clean install
