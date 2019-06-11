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

    # Resource sharing
    'openssh'               # Remote login with the SSH protocol
    'sshfs'                 # SSH File Transfer Protocol
    'nfs-utils'             # Support programs for Network File Systems
)

sudo pacman -S "${PKGS[@]}" --needed

# Begin network configuration
./710-network-setup.sh
