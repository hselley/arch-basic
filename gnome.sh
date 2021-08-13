#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo reflector --verbose --country US --age 12 --latest 10 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Sy

#sudo firewall-cmd --add-port=1025-65535/tcp --permanent
#sudo firewall-cmd --add-port=1025-65535/udp --permanent
#sudo firewall-cmd --reload
# sudo virsh net-autostart default

sudo pacman -S --noconfirm xorg gdm gnome gnome-extra gnome-tweaks
sudo pacman -Rc --noconfirm gnome-shell-extensions

# sudo flatpak install -y spotify
# sudo flatpak install -y kdenlive

sudo systemctl enable gdm
sudo systemctl start gdm
#/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
#sleep 5
#sudo reboot
