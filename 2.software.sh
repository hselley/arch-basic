#!/bin/bash

# Fonts
sudo pacman -S ttf-anonymous-pro ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid gnu-free-fonts ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-ibm-plex ttf-lato ttf-liberation ttf-linux-libertine noto-fonts ttf-roboto ttf-roboto-mono tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fantasque-sans-mono ttf-fira-mono ttf-hack ttf-fira-code ttf-inconsolata ttf-jetbrains-mono ttf-monofur adobe-source-code-pro-fonts cantarell-fonts inter-font ttf-opensans gentium-plus-font ttf-junicode adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji ttf-ubuntu-font-family powerline-fonts ttf-font-awesome terminus-font 

# Music/Video 
sudo pacman -S git filezilla strawberry mpd ncmpcpp vlc guvcview-qt gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly obs-studio 


# Internet
sudo pacman -S qutebrowser gnome-podcasts geary chromium firefox-i18n-es-mx telegram-desktop openssh 

# Utilities
sudo pacman -S htop screenfetch neofetch pacman-contrib speedtest-cli dunst alacritty splix cups cups-pdf inetutils dnsutils bluez bluez-utils bluez-tools bluez-hid2hci reflector ntfs-3g flatpak arandr libreoffice-fresh-es 
sudo pacman -S rofi rofi-calc bitwarden dmenu btop nvtop tilix

# Themes
#sudo pacman -S arc-gtk-theme arc-icon-theme materia-gtk-theme adapta-gtk-theme papirus-icon-theme  
sudo pacman -S arc-icon-theme papirus-icon-theme  

# i3
#sudo pacman -S i3-gaps i3blocks i3status i3status-rust 

# qTile
#sudo pacman -S qtile 

sudo systemctl enable bluetooth
sudo systemctl enable cups.service
sudo systemctl enable sshd
sudo systemctl enable reflector.timer
sudo systemctl enable fstrim.timer

sudo systemctl start bluetooth
sudo systemctl start cups.service
sudo systemctl start sshd
sudo systemctl start reflector.timer
sudo systemctl start fstrim.timer

