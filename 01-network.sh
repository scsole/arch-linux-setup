#!/bin/bash

#
# Network
#

PKGS=(
	'networkmanager'			# Network connection manager
	'dhclient'					# DHCP client
	'ufw'						# Uncomplicated Firewall
)

printf "\nInstalling Network Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\nConfiguring Network\n\n"
./setup/01-network.sh

printf "\nNetwork Components Done! \n\n"