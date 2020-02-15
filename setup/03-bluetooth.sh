#!/bin/bash

#
# Bluetooth Setup
#

# Enable service
sudo systemctl enable bluetooth.service

# Add user to lp group
sudo usermod -aG lp "$USER"

# Disable auto power-on of Bluetooth adapter (Blueman)
gsettings set org.blueman.plugins.powermanager auto-power-on false
