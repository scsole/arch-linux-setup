#!/bin/bash

#
# Xorg
#

PKGS=(
    # Xorg display server
    'xorg-server'           # Xorg X server
    'xorg-apps'             # Additional packages for configuration
    'xorg-xinit'            # Xorg initialisation program

    # Display drivers
    'xf86-video-intel'      # Intel video drivers
    'nvidia'                # NVIDIA drivers for linux
    'mesa'                  # Open-source implementation of OpenGL
    'vulkan-intel'          # Intel's Vulkan mesa driver
    'vulkan-icd-loader'     # Vulkan Installable Client Driver
)

# Install Xorg packages
sudo pacman -S "${PKGS[@]}" --needed

# Begin Xorg setup
./setup/04-xorg.sh
