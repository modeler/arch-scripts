#!/bin/sh

cat >> /etc/pacman.conf << EOF

[modeler]
SigLevel = Optional
Server = http://www.modeler.webspace.virginmedia.com/\$repo/\$arch
EOF
