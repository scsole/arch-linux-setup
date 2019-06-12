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
    'mesa'                  # Open-source implementation of OpenGL
    'vulkan-intel'          # Intel's Vulkan mesa driver
)

sudo pacman -S "${PKGS[@]}" --needed

# Begin Xorg configuration
./410-xorg-setup.sh
