#!/bin/sh

me=dan

pacman -S networkmanager network-manager-applet gnome-keyring

groupadd networkmanager
gpasswd -a ${me} networkmanager

ln -s '/usr/lib/systemd/system/NetworkManager.service' '/etc/systemd/system/multi-user.target.wants/NetworkManager.service'
