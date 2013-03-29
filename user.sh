#!/bin/sh

pacman -S xdg-user-dirs

useradd -m -c "Dan Tootill" -g users -G audio,lp,networkmanager,optical,power,scanner,storage,video,wheel dan
passwd dan

su - dan -c "xdg-user-dirs-update"

sed -i "s/# %wheel ALL=(ALL) NOPASSWD: ALL/%wheel ALL=(ALL) NOPASSWD: ALL/" /etc/sudoers
