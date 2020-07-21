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
    'chrome-gnome-shell'        # Browser connector for extensions.gnome.org
    'libappindicator-gtk3'      # Better app indicator support
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

# Set Gnome  preferences
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click 'true'
gsettings set org.gnome.desktop.peripherals.touchpad click-method 'fingers'
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll 'true'
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'flat'
gsettings set org.gnome.desktop.wm.preferences button-layout "appmenu:minimize,close"

# To set GDM preferences run
#sudo machinectl shell gdm@ /bin/bash
#gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click 'true'
#exit


printf "\n GNOME components done\n\n"
