#!/bin/sh

me=dan

pacman -S lxde gamin leafpad obconf epdfview gvfs polkit-gnome gnome-themes-standard faenza-icon-theme

su - ${me} -c 'mkdir -p $HOME/.config/openbox'
su - ${me} -c 'cp /etc/xdg/openbox/{menu.xml,rc.xml,autostart} $HOME/.config/openbox'
su - ${me} -c 'echo "exec startlxde" >> $HOME/.xinitrc'

