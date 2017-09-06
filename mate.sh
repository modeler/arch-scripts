#!/bin/sh

me=dan

cat >> /etc/pacman.conf << EOF

[mate]
SigLevel = Optional TrustAll
Server = http://repo.mate-desktop.org/archlinux/\$arch
EOF

pacman -Sy mate mate-extras gtk-engine-murrine

su - ${me} -c 'echo "exec mate-session" >> $HOME/.xinitrc'

sed -i -e "s/e8e8e8/fdfdfd/g" -e "s/e2e2e2/f5f5f5/g" -e "s/dcdcdc/ededed/g" /usr/share/themes/Menta/metacity-1/metacity-theme-1.xml

