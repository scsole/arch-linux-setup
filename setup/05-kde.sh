#!/bin/bash

#
# KDE Plasma Setup
#

# Start SDDM on boot
sudo systemctl enable sddm.service

# Improve sddm
sudo mkdir -p /etc/sddm.conf.d/
sudo tee /etc/sddm.conf.d/theme.conf <<EOF
[Theme]
Current=breeze
CursorTheme=Adwaita
EOF
sudo tee /etc/sddm.conf.d/genera.conf <<EOF
Numlock=on
EOF