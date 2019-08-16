#!/bin/bash

#
# Bluetooth
#

PKGS=(
	'bluez'						# Daemons for the Bluetooth protocol stack
	'bluez-utils'				# Utilities for the Bluetooth protocol stack
	'pulseaudio-bluetooth'		# PulseAudio Bluetooth support
)

printf "\nInstalling Bluetooth Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\nConfiguring Bluetooth\n\n"
./setup/03-bluetooth.sh

printf "\nBluetooth Components Done! \n\n"