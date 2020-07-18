#!/bin/bash

#
# Printer setup
#

# Enable CUPS socket
sudo systemctl enable org.cups.cupsd.socket

# Default to A4 paper size
echo "a4" | sudo tee -a /etc/papersize
