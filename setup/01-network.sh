#!/bin/bash

#
# Network Setup
#

# Enable NetworkManager
sudo systemctl enable NetworkManager.service

# Change the DHCP client
sudo tee /etc/NetworkManager/conf.d/dhcp-client.conf <<EOF
[main]
dhcp=dhclient
EOF

# Synchronise the system clock across the network
sudo systemctl enable systemd-timesyncd.service

# Provide network hostname resolution
# sudo systemctl enable systemd-resolved.service
sudo systemctl enable avahi-daemon.service
sudo systemctl enable avahi-daemon.service
sudo sed -i 's/\<resolve\>/mdns_minimal [NOTFOUND=return] &/' /etc/nsswitch.conf

# Enable firewall and deny all by default
# NB: All packages that require access through the firewall
# will need to be allowed.
sudo systemctl enable --now ufw.service
sudo ufw default deny
sudo ufw allow 5353/udp
sudo ufw enable
