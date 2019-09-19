#!/bin/bash

#
# Arch User Repository (AUR) Packages
#

printf "\n Downloading and Installing AUR Helper \n\n"
cd
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri

PKGS=(
    # Utilities
    'thermald'                  # The Linux Thermal Daemon program from 01.org
    'libinput-gestures'         # touchpad gestures using libinput
    'optimus-manager'           # Utility to handle GPU switching on Optimus laptops
    'optimus-manager-qt'        # Qt interface for Optimus Manager

    # General
    'enpass-bin'                # Multiplatform password manager
#    'j4-dmenu-desktop'          # A much faster replacement for dmenu
#    'urxvt-resize-font-git'     # Change font on the fly in rxvt

    # Development
    'visual-studio-code-bin'    # Text editor
#    'github-desktop-bin'        # GUI for managing Git and GitHub

    # Communication
    'signal-desktop-bin'        # Signal private messaging
)

printf "\n Installing AUR Packages \n\n"
pikaur -Syu
pikaur -S "${PKGS[@]}" --needed
