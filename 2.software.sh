#!/bin/bash

# Fonts
sudo pacman -S ttf-anonymous-pro ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid gnu-free-fonts ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-ibm-plex ttf-lato ttf-liberation ttf-linux-libertine noto-fonts ttf-roboto ttf-roboto-mono tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fantasque-sans-mono ttf-fira-mono ttf-hack ttf-fira-code ttf-inconsolata ttf-jetbrains-mono ttf-monofur adobe-source-code-pro-fonts cantarell-fonts inter-font ttf-opensans gentium-plus-font ttf-junicode adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji ttf-ubuntu-font-family powerline-fonts ttf-font-awesome terminus-font

# Music/Video
sudo pacman -S strawberry vlc guvcview-qt gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gst-plugin-pipewire obs-studio shortwave
sudo pacman -S mpd-mpris mpd ncmpcpp

# Internet
#sudo pacman -S qutebrowser gnome-podcasts geary chromium firefox-i18n-es-mx telegram-desktop openssh fragments #transmission-gtk
sudo pacman -S qutebrowser chromium firefox-i18n-es-mx telegram-desktop openssh #transmission-gtk

# Utilities
sudo pacman -S git filezilla htop screenfetch fastfetch pacman-contrib speedtest-cli splix cups cups-pdf inetutils dnsutils bluez bluez-utils bluez-tools bluez-hid2hci reflector ntfs-3g flatpak arandr libreoffice-fresh-es
#sudo pacman -S git filezilla htop screenfetch neofetch fastfetch pacman-contrib speedtest-cli splix cups cups-pdf inetutils dnsutils bluez bluez-utils bluez-tools bluez-hid2hci reflector ntfs-3g flatpak arandr libreoffice-fresh-es
#sudo pacman -S rofi rofi-calc dmenu dunst
#sudo pacman -S power-profiles-daemon tilix alacarte dconf-editor alacritty
sudo pacman -S power-profiles-daemon
sudo pacman -S bitwarden btop nvtop

# Dolphin plugins for preview files
sudo pacman -S kdegraphics-thumbnailers qt6-imageformats ffmpegthumbs icoutils libappimage

# KDE Basic Apps
sudo pacman -S ktorrent okular kwave kweather markdownpart kdenlive kcalc kajongg dolphin gwenview ktorrent

# Themes
#sudo pacman -S arc-gtk-theme arc-icon-theme materia-gtk-theme adapta-gtk-theme papirus-icon-theme
sudo pacman -S papirus-icon-theme

# i3
#sudo pacman -S i3-gaps i3blocks i3status i3status-rust

# qTile
#sudo pacman -S qtile

sudo systemctl enable bluetooth
sudo systemctl enable cups.service
sudo systemctl enable sshd
sudo systemctl enable reflector.timer
sudo systemctl enable fstrim.timer
sudo systemctl enable power-profiles-daemon

sudo systemctl start bluetooth
sudo systemctl start cups.service
sudo systemctl start sshd
sudo systemctl start reflector.timer
sudo systemctl start fstrim.timer
sudo systemctl start power-profiles-daemon
