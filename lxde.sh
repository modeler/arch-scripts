#!/bin/sh

pacman -S lxde gamin leafpad obconf epdfview gvfs polkit-gnome libgnomeui gnome-themes-standard

su - dan -c "mkdir -p /home/dan/.config/openbox"
su - dan -c "cp /etc/xdg/openbox/{menu.xml,rc.xml,autostart} /home/dan/.config/openbox"

