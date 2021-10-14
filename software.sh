#!/bin/bash
 
# Fonts
sudo pacman -S dina-font tamsyn-font bdf-unifont ttf-anonymous-pro ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid gnu-free-fonts ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-ibm-plex ttf-lato ttf-liberation ttf-linux-libertine noto-fonts ttf-roboto ttf-roboto-mono tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fantasque-sans-mono ttf-fira-mono ttf-hack ttf-fira-code ttf-inconsolata ttf-jetbrains-mono ttf-monofur adobe-source-code-pro-fonts cantarell-fonts inter-font ttf-opensans gentium-plus-font ttf-junicode adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji ttf-ubuntu-font-family powerline-fonts ttf-font-awesome terminus-font --noconfirm

# Music/Video
sudo pacman -S git filezilla strawberry mpd ncmpcpp vlc playerctl pavucontrol guvcview gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly simplescreenrecorder obs-studio --noconfirm

# LaTeX
sudo pacman -S texlive-fontsextra texlive-core texlive-bin texlive-bibtexextra texlive-formatsextra texlive-games texlive-humanities texlive-langcyrillic texlive-langextra texlive-langgreek texlive-latexextra texlive-music texlive-pictures texlive-pstricks texlive-publishers texlive-science texmaker gnome-latex kbibtex --noconfirm

# Science/Programming
sudo pacman -S geogebra wine octave julia r gambas3-ide jupyterlab jupyter-notebook spyder code git xournalpp xf86-input-wacom pandoc asciidoctor

# Internet
sudo pacman -S qutebrowser gnome-podcasts geary chromium firefox-i18n-es-mx telegram-desktop openssh --noconfirm

# Utilities
sudo pacman -S htop bpytop rofi rofi-calc screenfetch neofetch lxappearance-gtk3 pacman-contrib speedtest-cli dunst alacritty splix cups cups-pdf inetutils dnsutils bluez bluez-utils bluez-tools bluez-hid2hci reflector ntfs-3g flatpak arandr alacarte seahorse xf86-video-intel plank libreoffice-fresh-es --noconfirm

# Themes
sudo pacman -S arc-gtk-theme arc-icon-theme materia-gtk-theme adapta-gtk-theme papirus-icon-theme  --noconfirm

# i3
sudo pacman -S i3-gaps i3blocks i3status i3status-rust --noconfirm

# qTile
sudo pacman -S qtile --noconfirm

# Virtualization
#sudo pacman -S virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2
#usermod -aG libvirt geeker

# Firewall
#pacman -S iptables-nft ipset firewalld 

sudo systemctl enable bluetooth
sudo systemctl enable cups.service
sudo systemctl enable sshd
sudo systemctl enable avahi-daemon
sudo systemctl enable reflector.timer
sudo systemctl enable fstrim.timer
#sudo systemctl enable libvirtd
#sudo systemctl enable firewalld
#sudo systemctl enable acpid

sudo systemctl start bluetooth
sudo systemctl start cups.service
sudo systemctl start sshd
sudo systemctl start avahi-daemon
sudo systemctl start reflector.timer
sudo systemctl start fstrim.timer
#sudo systemctl start libvirtd
#sudo systemctl start firewalld
#sudo systemctl start acpid
