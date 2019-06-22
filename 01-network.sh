#!/bin/bash

#
# Network
#

PKGS=(
    'dialog'                # Display dialog boxes from shell scripts
    'networkmanager'        # Network connection manager
    'dhclient'              # DHCP client
    'ufw'                   # Uncomplicated Firewall
)

# Install network packages
sudo pacman -S "${PKGS[@]}" --needed

# Begin network setup
./setup/01-network.sh
