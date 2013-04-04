#!/bin/sh

pacman -S virtualbox-guest-utils

cat > /etc/modules-load.d/virtualbox.conf << EOF
vboxguest
vboxsf
vboxvideo
EOF

