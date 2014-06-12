#!/bin/sh

ln -s /usr/share/zoneinfo/Europe/London /etc/localtime

pacman -S ntp libedit
# Note: cannot use "systemctl enable ntpd" here.
ln -s '/usr/lib/systemd/system/ntpd.service' '/etc/systemd/system/multi-user.target.wants/ntpd.service'

echo "KEYMAP=uk" > /etc/vconsole.conf

sed -i "s/^#en_GB.UTF-8/en_GB.UTF-8/" /etc/locale.gen
locale-gen
echo "LANG=en_GB.UTF-8" > /etc/locale.conf

grub-install --target=i386-pc --recheck /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

echo "Enter host name:"
read myhostname
echo "${myhostname}" > /etc/hostname

passwd root

echo "alias vi=vim" > /root/.bash_profile
echo "syntax on" > /root/.vimrc

