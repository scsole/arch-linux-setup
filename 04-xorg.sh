#!/bin/bash

#
# Xorg
#

PKGS=(
    # Xorg display server
    'xorg-server'               # Xorg X server
    'xorg-apps'                 # Additional packages for configuration
    'xorg-xinit'                # Xorg initialisation program
#    'xautolock'                 # Automatic X screen-locker
#    'xss-lock'                  # Use external locker as X screen saver

    # Display drivers
    'xf86-video-intel'          # Intel video driver
    'mesa'                      # Open-source OpenGL implementation
    'nvidia'                    # NVIDIA video driver
    'nvidia-settings'           # Tool for configuring the NVIDIA graphics driver
)

printf "\n Installing Xorg Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\n Configuring Xorg\n\n"
./setup/04-xorg.sh

printf "\n Xorg Components Done! \n\n"
