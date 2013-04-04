#!/bin/sh

pacman -S networkmanager network-manager-applet gnome-keyring
systemctl enable NetworkManager

