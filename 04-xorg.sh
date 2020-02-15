#!/bin/bash

#
# Xorg
#

PKGS=(
    # Xorg display server
    'xorg-server'               # Xorg X server
    'xorg-apps'                 # Additional Xorg packages
    'xorg-xinit'                # Xorg initialisation program

    # Display drivers
    'mesa'                      # Open-source OpenGL implementation
    'nvidia'                    # NVIDIA video driver
    'nvidia-settings'           # Tool for configuring the NVIDIA graphics driver
    'intel-media-driver'        # Hardware video acceleration via VA-API — Broadwell+ iGPUs
    'libva-utils'               # Intel VA-API Media Applications and Scripts for libva
    'vulkan-icd-loader'         # Vulkan Installable Client Driver (ICD) Loader
    'vulkan-intel'              # Intel's Vulkan mesa driver
)

printf "\n Installing Xorg Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\n Configuring Xorg\n\n"
./setup/04-xorg.sh

printf "\n Xorg Components Done! \n\n"
