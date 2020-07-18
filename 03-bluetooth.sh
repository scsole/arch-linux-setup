#!/bin/bash

#
# Bluetooth
#

PKGS=(
    'bluez'                     # Daemons for the Bluetooth protocol stack
    'bluez-utils'               # Utilities for the Bluetooth protocol stack
    'pulseaudio-bluetooth'      # PulseAudio Bluetooth support
)

printf "\n Installing Bluetooth components\n\n"
sudo pacman -S "${PKGS[@]}" --needed --noconfirm

status=$?

if [ $status -eq 0 ]
then
    printf "\n Configuring Bluetooth\n\n"
    ./setup/03-bluetooth.sh
    printf "\n Bluetooth components done\n\n"
else
    printf "\n Bluetooth components failed!\n\n"
fi
