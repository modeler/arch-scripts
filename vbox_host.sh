#!/bin/sh

pacman -S virtualbox virtualbox-guest-iso net-tools

cat > /etc/modules-load.d/virtualbox.conf << EOF
vboxdrv
vboxnetadp
vboxnetflt
vboxpci
EOF

gpasswd -a dan vboxusers

