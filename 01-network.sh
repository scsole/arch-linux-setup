#!/bin/bash

#
# Network
#

PKGS=(
    'networkmanager'            # Network connection manager
    'networkmanager-openvpn'    # NetworkManager OpenVPN plugin
    'dialog'                    # A tool to display dialog boxes from shell scripts
    'dhclient'                  # DHCP client
    'dnsmasq'                   # DNS forwarder and DHCP server
    'avahi'                     # Service discovery using mDNS/DNS-SD
    'ufw'                       # Uncomplicated Firewall
)

printf "\n Installing Network Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\n Configuring Network\n\n"
./setup/01-network.sh

printf "\n Network Components Done! \n\n"
