#!/bin/bash

#
# Network setup
#

# Enable services
sudo systemctl enable systemd-timesyncd.service
sudo systemctl enable NetworkManager.service
sudo systemctl enable systemd-resolved.service
sudo systemctl enable ufw.service

# Enable network time synchronisation
sudo timedatectl set-ntp true

# Domain name resolution
ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf

# Enable mDNS and LLMNR resolver for all connections
sudo tee -a /etc/systemd/resolved.conf <<EOF

LLMNR=yes
MulticastDNS=yes
EOF
sudo tee /etc/NetworkManager/conf.d/mdns.conf <<EOF
[connection]
connection.mdns=yes
EOF
sudo tee /etc/NetworkManager/conf.d/llmnr.conf <<EOF
[connection]
connection.llmnr=yes
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
