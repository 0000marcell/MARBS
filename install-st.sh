sudo pacman -Sy xorg-init xorg-xrdb xcompmgr

cp ./.Xresources ~/
xrdb ~/.Xresources

cd ~/
curl https://codeload.github.com/0000marcell/st/zip/heads/master -o st.zip
unzip ./st.zip
cd st-master
sudo make clean install
