#!/bin/bash

#
# GNOME
#

PKGS=(
    'gnome'                 # The base GNOME desktop and applications
    'gdm'                   # GNOME Display Manager

    # Further GNOME applications
    'evolution'             # Email client
    'gnome-multi-writer'    # Write ISO files to USB devices
    'gnome-sound-recorder'  # Simple audio recording
    'gnome-tweaks'          # GNOME Tweak Tool
)

# Install GNOME packages
sudo pacman -S "${PKGS[@]}" --needed

# Begin GNOME setup
./setup/05-gnome.sh
