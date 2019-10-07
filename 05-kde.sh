#!/bin/bash

#
# KDE Plasma DE
#

PKGS=(
    # Base Plasma desktop
    'plasma-desktop'            # The KDE Plasma Desktop
    'plasma-wayland-session'    # Plasma Wayland support
    'sddm'                      # Simple Desktop Display Manager

    # Extra Plasma packages
    'ark'                       # Archiving tool
    'dolphin'                   # File Manager
    'konsole'                   # Terminal emulator
    'kwalletmanager'            # Wallet management tool
    'kdeplasma-addons'          # Addons to improve the Plasma experience
    'plasma-nm'                 # Network Manager applet
    'plasma-pa'                 # PulseAudio applet
    'user-manager'              # Settings module to manage users
    'powerdevil'                # Plasma power manager
    'bluedevil'                 # Bluetooth manager
    'breeze'                    # Breeze theme
    'breeze-gtk'                # Breeze theme for GTK 2 and 3
    'kde-gtk-config'            # GTK configuration
    'kscreen'                   # Screen management in KDE
    'kgamma5'                   # Adjust monitor's gamma settings
    'colord-kde'                # Use ICC profiles in Plasma
    'gnome-color-manager'       # GNOME Color Profile Tools
    'spectacle'                 # Screenshot capture utility
    'print-manager'             # A tool for managing print jobs and printers
    'plasma-browser-integration'        # Integrate browsers into the Plasma Desktop
    'sddm-kcm'                  # SDDM Config Module

    'xdg-desktop-portal'        # Desktop integration portals for sandboxed apps
    'xdg-desktop-portal-kde'    # A backend implementation using Qt/KF5
)

printf "\n Installing KDE Plasma Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\n Configuring KDE Plasma\n\n"
./setup/05-kde.sh

printf "\n KDE Plasma Components Done! \n\n"
