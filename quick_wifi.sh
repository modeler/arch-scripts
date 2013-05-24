#!/bin/sh

if=wlp0s29f7u2

echo 'ctrl_interface=DIR=/run/wpa_supplicant' > /tmp/virginmedia.conf
wpa_passphrase virginmedia4997475 lzjjnbre >> /tmp/virginmedia.conf
ip link set ${if} up # May not be needed as dhcpcd should bring it up but may be needed for wpa_supplicant.
wpa_supplicant -B -D nl80211 -c /tmp/virginmedia.conf -i ${if}
dhcpcd -A ${if}

