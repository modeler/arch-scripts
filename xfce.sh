#!/bin/sh

me=dan

pacman -S xfce4 xfce4-goodies gamin gvfs polkit-gnome

su - ${me} -c 'echo "exec startxfce4" >> $HOME/.xinitrc'
