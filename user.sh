#!/bin/sh

me=dan
fullname="Dan Tootill"

pacman -S xdg-user-dirs

useradd -m -c "${fullname}" -g users ${me} -G audio,wheel
passwd ${me}

su - ${me} -c 'echo "gtk-theme-name=\"Adwaita\"" > $HOME/.gtkrc-2.0'
su - ${me} -c 'echo "export GTK2_RC_FILES=\"\$HOME/.gtkrc-2.0\"" >> $HOME/.xinitrc'
su - ${me} -c 'xdg-user-dirs-update'

sed -i "s/# %wheel ALL=(ALL) NOPASSWD: ALL/%wheel ALL=(ALL) NOPASSWD: ALL/" /etc/sudoers

