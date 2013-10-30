#!/bin/sh

pacman -S xf86-input-synaptics laptop-mode-tools acpid hdparm

ln -s '/usr/lib/systemd/system/laptop-mode.service' '/etc/systemd/system/multi-user.target.wants/laptop-mode.service'

