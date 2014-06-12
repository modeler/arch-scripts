#!/bin/sh

pacstrap /mnt base base-devel sudo vim grub wpa_supplicant

genfstab -p /mnt >> /mnt/etc/fstab

arch-chroot /mnt

