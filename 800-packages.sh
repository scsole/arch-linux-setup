#!/bin/bash

#
# Pacman Packages
#

PKGS=(
    # Utilities
    'xdg-user-dirs'         # Manage user directories
    'mlocate'               # File searching utility
)

sudo pacman -S "${PKGS[@]}" --needed
