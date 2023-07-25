#!/bin/bash

sudo reflector --verbose --country US --age 12 --latest 10 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Sy

pacman -S tlp --noconfirm
systemctl enable tlp
systemctl enable NetworkManager

pacman -S fish zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting --noconfirm

sudo pacman -S xorg gdm gnome gnome-extra gnome-tweaks gnome-browser-connector
sudo pacman -Rc --noconfirm gnome-shell-extensions

sudo systemctl enable gdm

