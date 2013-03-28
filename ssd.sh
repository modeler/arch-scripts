#!/bin/sh

sed -i "s/ro$/ro elevator=noop/" /boot/syslinux/syslinux.cfg

sed -i "s/data=ordered/data=ordered,discard/" /etc/fstab

sed -i "s/#vm.vfs_cache_pressure = 100/vm.vfs_cache_pressure = 50/" /etc/sysctl.conf

sed -i "s/#vm.swappiness = 60/vm.swappiness = 1/" /etc/sysctl.conf

