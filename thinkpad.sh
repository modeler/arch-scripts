#!/bin/sh

echo 'w /sys/class/leds/phy0-led/trigger - - - - phy0radio' > /etc/tmpfiles.d/phy0-led.conf
systemd-tmpfiles --create phy0-led.conf
