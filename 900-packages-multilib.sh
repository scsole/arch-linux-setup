#!/bin/bash

#
# Multilib Packages
#

# Emable multilib repository
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
sudo pacman -Syu

PKGS=(
    # Audio Components
    'lib32-libpulse'        # PulseAudio sound server
    'lib32-alsa-plugins'    # ALSA configuration for PulseAudio
)

sudo pacman -S "${PKGS[@]}" --needed
