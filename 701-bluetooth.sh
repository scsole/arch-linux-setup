#!/bin/bash

#
# Bluetooth Components
#

PKGS=(
    'bluez'                 # Daemons for the bluetooth protocol stack
    'bluez-utils'           # Utilities for the Bluetooth protocol stack
    'pulseaudio-bluetooth'  # PulseAudio Bluetooth support
)

sudo pacman -S "${PKGS[@]}" --needed

# Begin bluetooth configuration
./711-bluetooth-setup.sh
