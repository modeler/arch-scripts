#!/bin/sh

pacman -S xorg-server xorg-apps xorg-xinit

# See /usr/share/X11/xkb/rules/base.lst.

cat > /etc/X11/xorg.conf.d/10-keyboard.conf << EOF
Section "InputClass"
        Identifier "Keyboard Defaults"
        MatchIsKeyboard "yes"
        Option "XkbModel" "pc105"
        Option "XkbLayout" "gb"
        Option "XkbVariant" "extd"
EndSection
EOF

