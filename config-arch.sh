#!/usr/bin/bash

# after creating 3 partitions
# one with at least 512M for efi
# one with at least 20G for the system
# one with at least 2G for swap
# format the esp with fat
mkfs.fat -F32 /dev/sda1
# format the root with ext4
mkfs.ext4 /dev/sda2
# format swap
mkswap /dev/sda3
# enable swap
swapon /dev/sda3

# mount root partition and efi
mount /dev/sda2 /mnt
mkdir /mnt/efi
mount /dev/sda1 /mnt/efi

# install archlinux in the partitions
pacstrap /mnt base linux linux-firmware

# generate fstab
genfstab -U /mnt >> /mnt/etc/fstab

# ghroot
arch-chroot /mnt

# create your user
echo mmc > /etc/hostname

echo "127.0.1.1  mmc" >> /etc/hosts

# enable network manager
systemctl enable NetworkManager

# install grub on the efi partition
grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/efi

# configure grub
grub-mkconfig -o /boot/grub/grub.cfg

# create user
useradd -m -g users -G wheel -s /bin/bash mmc

# create password for the new user
passwd mmc

# allowing users in the wheel group to run any command 
sudo echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
