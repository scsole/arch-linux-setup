#!/bin/bash

#
# Multilib (32-bit) Packages
#

printf "\n Enabling Multilib Repository\n\n"
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
sudo pacman -Syu

PKGS=(
    # Display drivers
    'lib32-mesa'                # Open-source OpenGL implementation
    'lib32-vulkan-intel'        # Intel's Vulkan mesa driver
    'lib32-vulkan-icd-loader'   # Vulkan Installable Client Driver Loader

    # Audio Components
    'lib32-libpulse'            # PulseAudio sound server
    'lib32-alsa-plugins'        # ALSA configuration for PulseAudio

    # Gaming
    'steam'                     # Steam
)

printf "\n Installing Multilib Packages\n\n"
sudo pacman -S "${PKGS[@]}" --needed
