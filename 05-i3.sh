#!/bin/bash

#
# i3 Window Manager
#

PKGS=(
    # Base i3wm
    'i3-gaps'                   # i3wm with gaps
    'i3blocks'                  # Define blocks for i3bar
    'i3lock'                    # Screen-locker
    'i3status'                  # Generates a status bar for i3bar
    'dmenu'                     # Application launcher

    # Useful utilities
    'dex'                       # Generate and execute desktop entries
    'xautolock'                 # Automatic X screen-locker
    'feh'                       # Fast and light imlib2-based image viewer
    'blueman'                   # Bluetooth manager
    'network-manager-applet'    # Applet for NetworkManager
    'gnome-keyring'             # Stores passwords and encryption keys
    'libsecret'                 # Store and retrieve passwords and secrets
)

printf "\n Installing i3 Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

status=$?
if [ $status -eq 0 ]
then
    printf "\n Configuring i3\n\n"
    ./setup/05-i3.sh
    printf "\n i3 Components Done\n\n"
else
    printf "\n i3 Components Skipped\n\n"
fi
