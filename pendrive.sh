#!/bin/sh

pacman -S xf86-video-vesa xf86-video-ati xf86-video-intel xf86-video-nouveau xf86-video-nv

OLDLINE=`grep "^HOOKS" /etc/mkinitcpio.conf`
NEWLINE=`echo ${OLDLINE} | sed -e "s/block //" -e "s/udev/udev block/"`

sed -i "s/${OLDLINE}/${NEWLINE}/" /etc/mkinitcpio.conf

