#!/bin/sh

pacman -S networkmanager network-manager-applet gnome-keyring

ln -s '/usr/lib/systemd/system/NetworkManager.service' '/etc/systemd/system/multi-user.target.wants/NetworkManager.service'
