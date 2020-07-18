#!/bin/bash

#
# KDE Plasma DE
#

PKGS=(

    # Display manager
    'sddm'                      # Simple Desktop Display Manager

    # Base Plasma desktop
    'plasma-desktop'            # The KDE Plasma Desktop
    'plasma-wayland-session'    # Plasma Wayland support

    # Preferred Plasma packages
    'bluedevil'                 # Bluetooth manager
    'drkonqi'                   # KDE crash handler
    'breeze'                    # Breeze theme
    'breeze-gtk'                # Breeze theme for GTK 2 and 3
    'kde-gtk-config'            # GTK configuration
    'kdeplasma-addons'          # Addons to improve the Plasma experience
    'kgamma5'                   # Monitor's gamma settings
    'kinfocenter'               # System information
    'kscreen'                   # Screen management in KDE
    'ksysguard'                 # Process monitor
    'kwallet-pam'               # KWallet PAM integration
    'kwayland-integration'      # Integration plugins for KDE frameworks in Wayland
    'kwrited'                   # KDE daemon listening for wall and write messages
    'plasma-browser-integration'    # Integrate browsers into the Plasma Desktop
    'plasma-nm'                 # Network Manager applet
    'plasma-pa'                 # PulseAudio applet
    'plasma-sdk'                # Useful applications for Plasma development
    'plasma-thunderbolt'        # Control Thunderbolt devices
    'plasma-workspace-wallpapers'   # Additional wallpapers
    'powerdevil'                # Plasma power manager
    'sddm-kcm'                  # Configure SDDM
    'user-manager'              # Manage users
    'xdg-desktop-portal-kde'    # Backend implementation for xdg-desktop-portal using Qt/KF5


    # Extra Plasma packages
    'ark'                       # Archiving tool
    'konsole'                   # Terminal emulator
    'colord-kde'                # Use ICC profiles in Plasma
    'gnome-color-manager'       # GNOME Color Profile Tools
    'libappindicator-gtk3'      # Fixes fuzzy icons in system tray
)

printf "\n Installing KDE Plasma components\n\n"
sudo pacman -S "${PKGS[@]}" --needed --noconfirm

status=$?
if [ $status -eq 0 ]
then
    printf "\n Beginning KDE Plasma configuration\n\n"
else
    printf "\n KDE Plasma components failed!\n\n"
fi


# Enable SDDM
sudo systemctl enable sddm.service

# Improve sddm
sudo mkdir -p /etc/sddm.conf.d/
sudo tee /etc/sddm.conf.d/theme.conf <<EOF
[Theme]
Current=breeze
CursorTheme=Adwaita
EOF
sudo tee /etc/sddm.conf.d/numlock.conf <<EOF
[General]
Numlock=on
EOF

printf "\n KDE Plasma components done\n\n"
