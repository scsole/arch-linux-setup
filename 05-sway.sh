#!/bin/bash

#
# Sway
#

PKGS=(
    'sway'                      # Tiling Wayland compositor
    'swaylock'                  # Screen locker for Wayland
    'swayidle'                  # Idle management daemon for Wayland
    'bemenu'                    # Application launcher
    'alacritty'                 # Cross-platform, GPU-accelerated terminal emulator
    'grim'                      # Screenshot utility for Wayland
    'slurp'                     # Select a region in Wayland compositors
    'mako'                      # Lightweight notification daemon for Wayland
    'waybar'                    # Highly customizable Wayland bar for Sway
)

printf "\n Installing Sway packages\n\n"
sudo pacman -S "${PKGS[@]}" --needed

status=$?
if [ $status -eq 0 ]; then
    printf "\n Sway components done\n\n"
else
    printf "\n Sway components failed!"
    exit $status
fi

