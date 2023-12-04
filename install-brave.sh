sudo pacman -Syuu --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S --save --nocleanmenu --nodiffmenu brave-bin
