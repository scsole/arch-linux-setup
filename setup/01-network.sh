#!/bin/bash

#
# Network Setup
#

# Enable services
sudo systemctl enable systemd-timesyncd.service
sudo systemctl enable NetworkManager.service
sudo systemctl enable avahi-daemon.service
sudo systemctl enable ufw.service

# Enable network time synchronisation
sudo timedatectl set-ntp true

# Enable local network hostname resolution
sudo sed -i 's/\<resolve\>/mdns_minimal [NOTFOUND=return] &/' /etc/nsswitch.conf

# Use ISC's DHCP client
sudo tee /etc/NetworkManager/conf.d/dhcp-client.conf <<EOF
[main]
dhcp=dhclient
EOF

# Enable mDNS resolver
sudo tee /etc/NetworkManager/conf.d/mdns.conf <<EOF
[connection]
connection.mdns=1
EOF

# Create firewall profiles for mDNS and LLMNR
sudo tee /etc/ufw/applications.d/ufw-zeroconf<<EOF
[mDNS]
title=mDNS
description=Multicast DNS hostname resolution
ports=5353/udp

[LLMNR]
title=LLMNR
description=Link-Local Multicast Name Resolution
ports=5355/tcp|5355/udp
EOF

# Enable firewall and deny all by default
sudo systemctl start ufw.service
sudo ufw default deny
sudo ufw enable

# Open some ports
sudo ufw allow mDNS
sudo ufw allow LLMNR
