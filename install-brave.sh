sudo pacman -Syuu --noconfirm
sudo pacman -S git debugedit fakeroot
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S --save brave-bin
