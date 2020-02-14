#!/bin/bash

#
# Network Setup
#

# Enable services
sudo systemctl enable systemd-resolved.service
sudo systemctl enable systemd-timesyncd.service
sudo systemctl enable NetworkManager.service
sudo systemctl enable ufw.service

# Use systemd-resolved for domain name resolution
sudo ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf

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

# Allow mDNS and LLMNR through the firewall
sudo ufw allow mDNS
sudo ufw allow LLMNR
