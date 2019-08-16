#!/bin/bash

#
# Xorg
#

PKGS=(
	# Xorg display server
	'xorg-server'				# Xorg X server
	'xorg-apps'					# Additional packages for configuration
	'xorg-xinit'				# Xorg initialisation program

	# Display drivers
	'xf86-video-intel'			# Intel video driver
	'mesa'						# Open-source OpenGL implementation
	'nvidia'					# NVIDIA video driver
	'nvidia-settings'			# Tool for configuring the NVIDIA graphics driver
#	'vulkan-intel'				# Intel's Vulkan mesa driver
#	'vulkan-icd-loader'			# Vulkan Installable Client Driver
)

printf "\nInstalling Xorg Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\nConfiguring Xorg\n\n"
./setup/04-xorg.sh

printf "\nXorg Components Done! \n\n"