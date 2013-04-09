#!/bin/sh

#pacman -S lxde gamin leafpad obconf epdfview gvfs polkit-gnome gnome-themes-standard libgnomeui
pacman -S lxde gamin leafpad obconf epdfview gvfs polkit-gnome gnome-themes-standard

su - dan -c 'mkdir -p $HOME/.config/openbox'
su - dan -c 'cp /etc/xdg/openbox/{menu.xml,rc.xml,autostart} $HOME/.config/openbox'
su - dan -c 'echo "exec startlxde" >> $HOME/.xinitrc'
