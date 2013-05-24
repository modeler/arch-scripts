#!/bin/sh

me=dan

cat >> /etc/pacman.conf << EOF

[mate]
SigLevel = Optional TrustAll
Server = http://repo.mate-desktop.org/archlinux/\$arch
EOF

pacman -Sy mate mate-extras

su - ${me} -c 'echo "exec mate-session" >> $HOME/.xinitrc'

