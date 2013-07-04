#!/bin/sh

pacman -S slim archlinux-themes-slim

sed -i "s/^#default_user        simone/default_user        dan/" /etc/slim.conf

sed -i "s/^#auto_login          no/auto_login          yes/" /etc/slim.conf

sed -i "s/^current_theme       default/current_theme       archlinux-darch-grey/" /etc/slim.conf

ln -s '/usr/lib/systemd/system/slim.service' '/etc/systemd/system/display-manager.service'

