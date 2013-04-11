#!/bin/sh

pacman -S xf86-input-synaptics laptop-mode-tools acpid

systemctl enable laptop-mode

