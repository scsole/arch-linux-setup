#!/bin/bash

#
# i3 Window Manager
#

PKGS=(
    'i3'                    # i3wm with 
    'dmenu'                 # Application launcher
)

# Install i3 packages
sudo pacman -S "${PKGS[@]}" --needed

# Begin i3 setup
./setup/05-i3.sh
