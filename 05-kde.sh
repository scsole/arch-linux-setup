#!/bin/bash

#
# KDE Plasma DE
#

PKGS=(
	# Base Plasma desktop
	'plasma-desktop'			# The KDE Plasma Desktop
	'sddm'						# Simple Desktop Display Manager

	# Extra Plasma packages
	'dolphin'					# File Manager
	'kwalletmanager'			# Wallet management tool
	'kdeplasma-addons'			# Addons to improve the Plasma experience
	'plasma-nm'					# Network Manager applet
	'plasma-pa'					# PulseAudio applet
	'user-manager'				# Settings module to manage users
	'powerdevil'				# Plasma power manager
	'bluedevil'					# Bluetooth manager
	'breeze'					# Breeze theme
	'breeze-gtk'				# Breeze theme for GTK 2 and 3
	'kde-gtk-config'			# GTK configurator
	'kscreen'					# Screen management in KDE
	'colord-kde'				# Use ICC profiles in Plasma
)

printf "\n Installing KDE Plasma Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\n Configuring KDE Plasma\n\n"
./setup/05-kde.sh

printf "\n KDE Plasma Components Done! \n\n"