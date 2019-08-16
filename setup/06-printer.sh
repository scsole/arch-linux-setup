#!/bin/bash

#
# Printer Setup
#

# Enable CUPS socket
sudo systemctl enable org.cups.cupsd.socket

# Enable Avahi service
# sudo systemctl enable avahi-daemon.service # Conflicts with systemd-resolved.service

# Open firewall port for Avahi
# sudo ufw allow 5353/udp