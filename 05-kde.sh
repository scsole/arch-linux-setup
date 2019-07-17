#!/bin/bash

#
# KDE Plasma
#

PKGS=(
    'plasma'                # The KDE Plasma desktop and applications
    'sddm'                  # Simple Desktop Display Manager

    # Further KDE applications
    'ark'                   # Archiving tool
    'dolphin'               # KDE File manager
    'dolphin-plugins'       # Extra Dolphin plugins
    'gwenview'              # Image viewer
    'kaccounts-integration' # Administer web accounts across KDE
    'kaccounts-providers'   # Administer web accounts across KDE
    'kcalc'                 # Scientific Calculator
    'kfind'                 # Find Files/Folders
    'kgpg'                  # A GnuPG frontend
    'kmail'                 # KDE mail client
    'konsole'               # KDE's terminal emulator
    'kwalletmanager'        # Wallet management tool
    'okular'                # Document Viewer
    'spectacle'             # KDE screenshot capture utility
    'latte-dock'            # A dock based on Plasma Frameworks
)

# Install KDE packages
sudo pacman -S "${PKGS[@]}" --needed

# Begin KDE setup
./setup/05-kde.sh
