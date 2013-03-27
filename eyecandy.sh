#!/bin/sh

pacman -S faenza-icon-theme xcursor-vanilla-dmz

cat > /etc/fonts/local.conf << EOF
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">

<fontconfig>

	<match target="font">
		<edit name="antialias" mode="assign">
			<bool>true</bool>
		</edit>
	</match>

	<match target="font">
		<edit name="hinting" mode="assign">
			<bool>true</bool>
		</edit>
	</match>

	<match target="font">
		<edit name="autohint" mode="assign">
			<bool>false</bool>
		</edit>
	</match>

	<match target="font">
		<edit name="hintstyle" mode="assign">
			<const>hintslight</const>
		</edit>
	</match>

	<match target="font">
		<edit name="rgba" mode="assign">
			<const>rgb</const>
		</edit>
	</match>

	<match target="font">
		<edit mode="assign" name="lcdfilter">
			<const>lcddefault</const>
		</edit>
	</match>

</fontconfig>
EOF

