#!/bin/sh

me=dan

pacman -S xfce4 xfce4-goodies gamin

su - ${me} -c 'echo "exec startxfce4" >> $HOME/.xinitrc'
