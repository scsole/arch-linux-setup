#!/bin/bash

#
# GNOME DE
#

PKGS=(

    # Display manager
    'gdm'                       # Display manager

    # Base Gnome desktop
    'gnome'                     # GNOME desktop and a subset of well-integrated applications

    # Extra GNOME packages
    'gnome-tweaks'              # GNOME Tweak Tool
    'xorg-server-xwayland'      # Run X clients under Wayland
)

printf "\n Installing GNOME components\n\n"
sudo pacman -S "${PKGS[@]}" --needed --noconfirm

status=$?
if [ $status -eq 0 ]
then
    printf "\n Beginning GNOME configuration\n\n"
else
    printf "\n GNOME components failed!\n\n"
fi

# Enable Gnome Display Manager
sudo systemctl enable gdm.service

# Set some preferences
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click 'true'

printf "\n GNOME components done\n\n"
