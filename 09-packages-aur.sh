#!/bin/bash

#
# Arch User Repository (AUR) Packages
#

printf "\n Downloading and Installing AUR Helper\n\n"
mkdir -p ~/source
cd ~/source
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

PKGS=(
    # Utilities
    'thermald'                  # The Linux Thermal Daemon program from 01.org
    'libinput-gestures'         # touchpad gestures using libinput
    'intel-undervolt'           # Intel CPU undervolting tool

    # General
    'enpass-bin'                # Multiplatform password manager
    'urxvt-resize-font-git'     # Change font on the fly in rxvt
)

printf "\n Installing AUR Packages\n\n"
yay -Syu
yay -S "${PKGS[@]}" --needed
