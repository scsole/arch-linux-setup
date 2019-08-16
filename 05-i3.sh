#!/bin/bash

#
# i3 Window Manager
#

PKGS=(
	'i3-gaps'					# i3wm with gaps
	'i3blocks'					# Define blocks for i3bar
	'i3lock'					# Screenlocker
	'i3status'					# Generates a status bar for i3bar
	'dmenu'						# Application launcher
)

printf "\nInstalling i3 Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\nConfiguring i3\n\n"
./setup/05-i3.sh

printf "\ni3 Components Done! \n\n"