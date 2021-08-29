# install-x needs to run first
sudo pacman -Syuu
sudo pacman -S i3-wm feh
mkdir -p ~/.config/i3
cp -r ./config/i3/* ~/.config/i3
cp ./background.jpg ~/.config/i3/
