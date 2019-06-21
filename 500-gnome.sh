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
    'gnome-usage'           # View information about system resources
)

sudo pacman -S "${PKGS[@]}" --needed

# Begin GNOME configuration
./510-gnome-setup.sh
