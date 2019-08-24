#!/bin/bash

#
# Network
#

PKGS=(
	'networkmanager'			# Network connection manager
	'dhclient'					# DHCP client
	'ufw'						# Uncomplicated Firewall
)

printf "\n Installing Network Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\n Configuring Network\n\n"
./setup/01-network.sh

printf "\n Network Components Done! \n\n"