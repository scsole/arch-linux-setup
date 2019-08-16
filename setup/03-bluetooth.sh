#!/bin/bash

#
# Bluetooth Setup
#

# Enable Bluetooth
sudo systemctl enable bluetooth.service

# Add user to lp group
sudo usermod -aG lp "$USER"