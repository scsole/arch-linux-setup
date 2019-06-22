#!/bin/bash

#
# Bluetooth
#

PKGS=(
    'bluez'                 # Daemons for the Bluetooth protocol stack
    'bluez-utils'           # Utilities for the Bluetooth protocol stack
    'pulseaudio-bluetooth'  # PulseAudio Bluetooth support
)

# Install Bluetooth packages
sudo pacman -S "${PKGS[@]}" --needed

# Begin Bluetooth setup
./setup/03-bluetooth.sh
