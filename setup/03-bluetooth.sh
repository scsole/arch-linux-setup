#!/bin/bash

#
# Bluetooth Setup
#

# Enable service
sudo systemctl enable bluetooth.service

# Add user to lp group
sudo usermod -aG lp "$USER"
