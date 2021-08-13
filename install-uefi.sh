#!/bin/bash

ln -sf /usr/share/zoneinfo/America/Mexico_City /etc/localtime
hwclock --systohc
echo "en_US.UTF-8 UTF-8" >> locale.gen
echo "es_MX.UTF-8 UTF-8" >> locale.gen
locale-gen
echo "LANG=es_MX.UTF-8" >> /etc/locale.conf
echo "KEYMAP=la-latin1" >> /etc/vconsole.conf
echo "jupiter" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 jupiter.org.mx jupiter" >> /etc/hosts
mkinitcpio -P
echo root:password | chpasswd


# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm

pacman -S grub efibootmgr os-prober intel-ucode zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting --noconfirm
#pacman -S dialog wpa_supp4licant mtools dosfstools  xdg-user-dirs xdg-utils  bash-completion  rsync  acpi acpi_call  openbsd-netcat  sof-firmware nss-mdns acpid   

# Laptop 
pacman -S tlp --noconfirm

# pacman -S --noconfirm xf86-video-amdgpu
# pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable tlp # You can comment this command out if you didn't install tlp, see above

useradd -m geeker
echo geeker:password | chpasswd
usermod -aG wheel -s /usr/bin/zsh geeker 

sed -i '82s/.//' /etc/sudoers

printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"
