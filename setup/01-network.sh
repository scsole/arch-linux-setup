#!/bin/bash

#
# Network Setup
#

# TODO:
# - mDNS
# - LLMNR

# Enable services
sudo systemctl enable systemd-resolved.service
sudo systemctl enable systemd-timesyncd.service
sudo systemctl enable NetworkManager.service
sudo systemctl enable ufw.service

# Use systemd-resolved for domain name resolution
sudo ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf

# Enable firewall and deny all by default
sudo systemctl start ufw.service
sudo ufw default deny
sudo ufw enable
