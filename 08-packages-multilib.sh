#!/bin/bash

#
# Multilib (32-bit) packages
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

printf "\n Installing multilib packages\n\n"

sudo pacman -S "${PKGS[@]}" --needed --noconfirm
status=$?

if [ $status -ne 0 ]; then
    printf "\n Warning: Pacman exited with ${status}\n\n"
else
    printf "\n Multilib packages installed successfully\n\n"
fi
