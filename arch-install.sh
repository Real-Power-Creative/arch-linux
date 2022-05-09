#!/bin/bash

# -SET TIMEZONE-
ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc

# -SET LOCAL SETTINGS & SYSTEM LANGUAGE-
sed -i '169s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_IN.UTF-8" >> /etc/locale.conf

# -NETWORK CONFIGURATIONS-
echo real-arch >> /etc/hostname
echo 127.0.0.1	localhost >> /etc/hosts
echo ::1		localhost >> /etc/hosts
echo 127.0.1.1	real-arch.localdomain	real-arch >> /etc/hosts
pacman -S networkmanager
systemctl enable NetworkManager

# -ADD NEW USER-
useradd -m -G wheel -s /bin/bash real-power


# -INSTALL & SET GRUB BOOTLOADER-

pacman -S grub efibootmgr
mkdir /boot/efi
mount /dev/nvme0n1p1 /boot/efi
grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi
grub-mkconfig -o /boot/grub/grub.cfg

