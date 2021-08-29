sudo pacman -S xorg-init xorg-xrdb xcompmgr

cp ./.Xresources ~/
xrdb ~/.Xresources

cd ~/
git clone git@github.com:0000marcell/st.git
cd st
make clean install
