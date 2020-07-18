#!/bin/bash

#
# Arch User Repository (AUR) packages
#

printf "\n Downloading and installing AUR helper\n\n"
mkdir -p ~/source
cd ~/source
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Syu

PKGS=(
    # Utilities
    'thermald'                  # The Linux Thermal Daemon program from 01.org
    #'libinput-gestures'         # touchpad gestures using libinput

    # General
    'enpass-bin'                # Multiplatform password manager
    #'urxvt-resize-font-git'     # Change font on the fly in rxvt
)

printf "\n Installing AUR packages\n\n"

yay -S "${PKGS[@]}" --needed --noconfirm
status=$?

if [ $status -ne 0 ]; then
    printf "\n Warning: Yay exited with ${status}\n\n"
else
    printf "\n AUR Packages installed successfully\n\n"
fi
