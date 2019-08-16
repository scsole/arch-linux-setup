#!/bin/bash

#
# KDE Plasma DE
#
# TODO:
#  - Select minimal packages
#

PKGS=(
	'plasma'					# The KDE Plasma desktop and some applications
	'sddm'						# Simple Desktop Display Manager
)

printf "\nInstalling KDE Plasma Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\nConfiguring KDE Plasma\n\n"
./setup/05-kde.sh

printf "\nKDE Plasma Components Done! \n\n"