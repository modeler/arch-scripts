#!/bin/sh

pacman -S xf86-video-intel

sed -i "s/^MODULES=\"\"/MODULES=\"i915\"/" /etc/mkinitcpio.conf
mkinitcpio -p linux

