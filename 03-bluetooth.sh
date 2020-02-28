#!/bin/bash

#
# Bluetooth
#

PKGS=(
    'bluez'                     # Daemons for the Bluetooth protocol stack
    'bluez-utils'               # Utilities for the Bluetooth protocol stack
    'pulseaudio-bluetooth'      # PulseAudio Bluetooth support
)

printf "\n Installing Bluetooth Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

status=$?

if [ $status -eq 0 ]
then
    printf "\n Configuring Bluetooth\n\n"
    ./setup/03-bluetooth.sh
    printf "\n Bluetooth Components Done\n\n"
else
    printf "\n Bluetooth Components Skipped\n\n"
fi
