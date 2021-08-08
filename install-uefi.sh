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
echo root:password | chpasswd
mkinitcpio -P

# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm

pacman -S grub efibootmgr networkmanager network-manager-applet dialog wpa_supp4licant mtools dosfstools reflector base-devel linux-headers avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups hplip alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g terminus-font
# Laptop 
pacman -S tlp

# pacman -S --noconfirm xf86-video-amdgpu
# pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable cups.service
systemctl enable sshd
systemctl enable avahi-daemon
systemctl enable tlp # You can comment this command out if you didn't install tlp, see above
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable libvirtd
#systemctl enable firewalld
systemctl enable acpid

useradd -m geeker
echo geeker:password | chpasswd
usermod -aG libvirt geeker wheel

sed -i '82s/.//' /etc/sudoers

printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"
