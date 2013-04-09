#!/bin/sh

me=dan

pacman -S xdg-user-dirs

groupadd networkmanager
useradd -m -c "Dan Tootill" -g users -G audio,lp,networkmanager,optical,power,scanner,storage,video,wheel ${me}
passwd dan

su - ${me} -c 'echo "export GTK2_RC_FILES=\"\$HOME/.gtkrc-2.0\"" >> $HOME/.xinitrc'
su - ${me} -c 'xdg-user-dirs-update'

sed -i "s/# %wheel ALL=(ALL) NOPASSWD: ALL/%wheel ALL=(ALL) NOPASSWD: ALL/" /etc/sudoers
