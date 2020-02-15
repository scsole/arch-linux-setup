#!/bin/bash

#
# Arch User Repository (AUR) Packages
#

printf "\n Downloading and Installing AUR Helper \n\n"
mkdir -p ~/src
cd ~/src
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri

PKGS=(
    # Utilities
    'thermald'                  # The Linux Thermal Daemon program from 01.org
    'libinput-gestures'         # touchpad gestures using libinput
#    'optimus-manager'           # Utility to handle GPU switching on Optimus laptops
#    'optimus-manager-qt'        # Qt interface for Optimus Manager
    'intel-undervolt'           # Intel CPU undervolting tool

    # General
    'enpass-bin'                # Multiplatform password manager
#    'redshift-minimal'          # Adjust screen colour temperature
#    'j4-dmenu-desktop'          # A much faster replacement for dmenu
    'urxvt-resize-font-git'     # Change font on the fly in rxvt

    # Development

    # Communication
#    'whatsapp-nativefier'       # WhatsApp desktop

    # Media
    'plex-media-player'         # Plex media player

    # Productivity
    #'davinci-resolve'           # Proprietary video editor, color correction and compositing application
)

printf "\n Installing AUR Packages \n\n"
pikaur -Syu
pikaur -S "${PKGS[@]}" --needed
