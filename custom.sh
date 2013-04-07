#!/bin/sh

cat >> /etc/pacman.conf << EOF

[modeler]
Server = http://www.dantootill.webspace.virginmedia.com/\$repo/\$arch
EOF
