#!/bin/sh

if=wlp0s29f7u2

cp /etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf.orig

cat > /etc/wpa_supplicant/wpa_supplicant.conf << EOF
ctrl_interface=/var/run/wpa_supplicant
eapol_version=1
ap_scan=1
fast_reauth=1

network={
	ssid="virginmedia4997475"
	psk=0d18e5dc68b7d59ae26338a3c21f1f5c709a36cdcf43580bbeafd609c5d5011d
}
EOF

cat > /etc/systemd/system/virginmedia.service << EOF
[Unit]
Description=Network Connectivity
Wants=network.target
Before=network.target
BindsTo=sys-subsystem-net-devices-${if}.device
After=sys-subsystem-net-devices-${if}.device
       
[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/sbin/ip link set dev ${if} up
ExecStart=/usr/sbin/wpa_supplicant -B -D nl80211 -i ${if} -c /etc/wpa_supplicant/wpa_supplicant.conf
ExecStart=/sbin/dhcpcd ${if}
        
[Install]
WantedBy=multi-user.target
EOF

systemctl enable virginmedia
systemctl start virginmedia

