sudo pacman -S xorg-init xorg-xrdb xcompmgr

cp ./.Xresources ~/
xrdb ~/.Xresources

cd ~/
curl https://github.com/0000marcell/st/archive/refs/heads/master.zip
unzip ./st.zip -o st
cd st
make clean install
