#!/bin/bash

#
# Network Components
#

PKGS=(
    # Network manager
    'dialog'                # Display dialog boxes from shell scripts
    'networkmanager'        # Network connection manager
    'dhclient'              # DHCP client

    # Firewall
    'ufw'                   # Uncomplicated Firewall
)

sudo pacman -S "${PKGS[@]}" --needed

# Begin network configuration
./710-network-setup.sh
