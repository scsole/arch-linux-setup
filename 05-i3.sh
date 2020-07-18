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

printf "\n Installing i3 packages\n\n"
sudo pacman -S "${PKGS[@]}" --needed --noconfirm

status=$?
if [ $status -eq 0 ]
then
    printf "\n Beginning i3 configuration\n\n"
else
    printf "\n i3 components failed!"
    exit $status
fi

# Configure xinit
cp /etc/X11/xinit/xinitrc ~/.xinitrc
sed -i '/twm/,/exec/s/^/#/' ~/.xinitrc
echo exec i3 >> ~/.xinitrc

printf "\n i3 Components Done\n\n"
