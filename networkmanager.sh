#!/bin/sh

pacman -S networkmanager network-manager-applet gnome-keyring
groupadd networkmanager
systemctl enable NetworkManager

