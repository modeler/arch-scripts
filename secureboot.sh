#!/bin/bash

os=$(ls -l /dev/disk/by-uuid/ | awk '/sda6/ { print $9 }')

pacman -S gummiboot

mkdir -p /boot/loader/entries
cat >> /boot/loader/loader.conf << EOF
default	arch
timeout	10
EOF

cat >> /boot/loader/entries/arch.conf << EOF
title	Arch Linux
linux	/vmlinuz-linux
initrd	/initramfs-linux.img
options	root=UUID=${os} rw
EOF

cp /boot/EFI/gummiboot/gummibootx64.efi /boot/EFI/loader.efi

cd /boot/EFI
wget http://blog.hansenpartnership.com/wp-uploads/2013/PreLoader.efi
wget http://blog.hansenpartnership.com/wp-uploads/2013/HashTool.efi

efibootmgr -c -d /dev/sda -p 2 -l /EFI/PreLoader.efi

exit 0
