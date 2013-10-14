#!/bin/sh

sed -i "s/rw/rw elevator=noop/" /boot/syslinux/syslinux.cfg

sed -i "s/relatime/noatime,discard/" /etc/fstab

echo "vm.vfs_cache_pressure = 50" >> /etc/sysctl.d/99-sysctl.conf
echo "vm.swappiness = 1" >> /etc/sysctl.d/99-sysctl.conf

