#!/bin/sh

ln -s /usr/share/zoneinfo/Europe/London /etc/localtime

pacman -S ntp libedit
# Note: cannot use "systemctl enable ntpd" here.
ln -s '/usr/lib/systemd/system/ntpd.service' '/etc/systemd/system/multi-user.target.wants/ntpd.service'

echo "KEYMAP=uk" > /etc/vconsole.conf

sed -i "s/^#en_GB.UTF-8/en_GB.UTF-8/" /etc/locale.gen
locale-gen
echo "LANG=en_GB.UTF-8" > /etc/locale.conf

syslinux-install_update -iam
vi /boot/syslinux/syslinux.cfg

echo "Enter host name:"
read myhostname
echo "${myhostname}" > /etc/hostname

passwd root
