#!/bin/bash

#
# Pacman Packages
#

PKGS=(
    # Terminal Utilities
    'xdg-user-dirs'         # Manage user directories
    'mlocate'               # File searching utility
    'git'                   # Distributed version control system
    'vim'                   # A highly configurable text editor
    'tree'                  # Directory listing program
)

sudo pacman -S "${PKGS[@]}" --needed
