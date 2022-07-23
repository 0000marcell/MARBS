# install-x needs to run first
sudo pacman -Syuu --noconfirm
sudo pacman -S --noconfirm i3-wm feh i3blocks dunst
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3blocks
cp -r ./config/i3/* ~/.config/i3
cp -r ./config/i3blocks/* ~/.config/i3blocks
cp ./background.jpg ~/.config/i3/
