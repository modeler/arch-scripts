#!/bin/sh

pacman -S virtualbox-guest-utils

cat > /etc/modules-load.d/virtualbox.conf << EOF
vboxguest
vboxsf
vboxvideo
EOF

ln -s '/usr/lib/systemd/system/dhcpcd.service' '/etc/systemd/system/multi-user.target.wants/dhcpcd.service'

