#!/bin/bash

#
# GNOME
#

PKGS=(
    'gnome'                 # The base GNOME desktop and applications
    'gdm-prime'             # GNOME Display Manager patched with PRIME support

    # Further GNOME applications
    'evolution'             # Email client
    'gnome-tweaks'          # GNOME Tweak Tool
)

# Install GNOME packages
sudo pacman -S "${PKGS[@]}" --needed

# Begin GNOME setup
./setup/05-gnome.sh
