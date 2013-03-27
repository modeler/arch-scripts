#!/bin/sh

pacman -S slim archlinux-themes-slim

sed -i "s/^#default_user        simone/default_user        dan/" /etc/slim.conf

sed -i "s/^#auto_login          no/auto_login          yes/" /etc/slim.conf

sed -i "s/^current_theme       default/current_theme       archlinux-darch-grey/" /etc/slim.conf

systemctl enable slim

