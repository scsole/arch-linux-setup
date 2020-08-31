#!/bin/bash

#
# Flatpak packages from Flathub
#

PKGS=(
    'com.microsoft.Teams'
    'com.valvesoftware.Steam'
    'org.videolan.VLC'
    'org.freecadweb.FreeCAD'
    'us.zoom.Zoom'
)

flatpak install flathub "${PKGS[@]}"
