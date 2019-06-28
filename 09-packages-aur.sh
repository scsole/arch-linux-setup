#!/bin/bash

#
# Arch User Repository (AUR) Packages
#

# Download and install AUR helper
cd
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri

PKGS=(
    # General Utilities
    'enpass-bin'            # Multiplatform password manager

    # Development
    'visual-studio-code-bin'    # Text editor
    'github-desktop'        # GUI for managing Git and GitHub

    # Communication
    'discord'               # Voice and text chat for gamers
    'signal'                # Private messenger

    # Fonts
    'steam-fonts'
)

pikaur -S "${PKGS[@]}" --needed
