sudo pacman -Syuu --noconfirm
sudo pacman -S --noconfirm postgresql
sudo locale-gen en_US.UTF-8
sudo -iu postgres initdb --locale=en_US.UTF-8 -D /var/lib/postgres/data
sudo systemctl start postgresql
sudo systemctl enable postgresql
