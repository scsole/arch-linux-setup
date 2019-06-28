#!/bin/bash

#
# Multilib (32-bit) Packages
#

# Emable multilib repository
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
sudo pacman -Syu

PKGS=(
    # Display drivers
    'lib32-mesa'            # Open-source implementation of OpenGL
    'lib32-vulkan-intel'    # Intel's Vulkan mesa driver
    'lib32-vulkan-icd-loader'   # Vulkan Installable Client Driver

    # Audio Components
    'lib32-libpulse'        # PulseAudio sound server
    'lib32-alsa-plugins'    # ALSA configuration for PulseAudio

    # Utilities
    'steam'                 # Steam
)

sudo pacman -S "${PKGS[@]}" --needed
