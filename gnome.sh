#!/bin/sh

me=dan

pacman -S gnome gnome-extra gnome-tweak-tool faience-icon-theme

su - ${me} -c 'echo "exec gnome-session" >> $HOME/.xinitrc'

