#!/bin/sh

echo "ctrl_interface=DIR=/run/wpa_supplicant" > /tmp/wifi.conf
wpa_passphrase virginmedia4997475 lzjjnbre >> /tmp/wifi.conf
wpa_supplicant -B -D nl80211 -c /tmp/wifi.conf -i wlp0s29f7u2
dhcpcd -A wlp0s29f7u2

