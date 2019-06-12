#!/bin/bash

#
# Network Configuration
#

# Enable NetworkManager on boot
sudo systemctl enable NetworkManager.service

# Change the DHCP client
sudo cat <<EOF > /etc/NetworkManager/conf.d/dhcp-client.conf
[main]
dhcp=dhclient
EOF

# Synchronise the system clock across the network
sudo systemctl enable systemd-timesyncd.service

# Enable firewall and deny all by default
# NB: All packages that require access through the firewall
# will need to be allowed.
sudo systemctl enable --now ufw.service
sudo ufw default deny
sudo ufw enable
