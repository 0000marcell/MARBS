sudo pacman -Syuu --noconfirm
sudo pacman -S --noconfirm xorg-server xorg-xmodmap xorg-xinit xorg-xinput xorg-xrdb xcompmgr arandr
cp ./.xinitrc ~/
cp ./.Xmodmap ~/
cp ./.Xmodmapbr ~/
cp ./.Xresources ~/
