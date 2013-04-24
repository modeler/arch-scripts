#!/bin/sh

pacman -S virtualbox

cat > /etc/modules-load.d/virtualbox.conf << EOF
vboxdrv
EOF

