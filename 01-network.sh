#!/bin/bash

#
# Network
#

PKGS=(
    'networkmanager'            # Network connection manager
    'ufw'                       # Uncomplicated Firewall
)

printf "\n Installing network components\n\n"
sudo pacman -S "${PKGS[@]}" --needed --noconfirm

status=$?

if [ $status -eq 0 ]
then
    printf "\n Configuring network\n\n"
    ./setup/01-network.sh
    printf "\n Network components done\n\n"
else
    printf "\n Network components failed!\n\n"
fi
