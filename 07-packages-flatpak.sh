#!/bin/bash

#
# Flatpak packages from Flathub
#

PKGS=(
    'com.google.AndroidStudio'
    'com.microsoft.Teams'
    'com.obsproject.Studio'
    # 'com.valvesoftware.Steam'
    'org.blender.Blender'
    'org.videolan.VLC'
    'org.freecadweb.FreeCAD'
    'org.filezillaproject.Filezilla'
    'us.zoom.Zoom'
)

flatpak install flathub "${PKGS[@]}"
