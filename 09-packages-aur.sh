#!/bin/bash

. ./.env

#
# Arch User Repository (AUR) packages
#

if ! command -v yay &> /dev/null; then
    printf "\n Downloading and installing AUR helper\n\n"
    mkdir -p ~/Source
    cd ~/Source
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    yay -Syu
fi

PKGS=(
    # Utilities
    'corrupter-bin'             # Simple image glitcher for nice looking lockscreen backgrounds
    'starship-bin'              # A super awesome prompt
    'swaylock-effects-git'      # A fancier screen locker for Wayland

    # General
    'enpass-bin'                # Multiplatform password manager

    # Development
    'insomnia'                  # HTTP and GraphQL client
    'kicad-templates'           # KiCad templates

    # Themes
    'adwaita-qt'                # Native adwaita theme for Qt applications
)

if [ $LAPTOP == true ]; then
    PKGS+=(
        'auto-cpufreq-git'          # Automatic CPU speed & power optimizer
        'libinput-gestures'         # touchpad gestures using libinput
        'libfprint-tod-git'         # TOD library for fingerprint readers
    )
fi

printf "\n Installing AUR packages\n\n"

yay -S "${PKGS[@]}" --needed
status=$?

if [ $status -ne 0 ]; then
    printf "\n Warning: Yay exited with ${status}\n\n"
else
    printf "\n AUR Packages installed successfully\n\n"
fi
