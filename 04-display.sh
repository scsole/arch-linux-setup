#!/bin/bash

#
# Display
#

PKGS=(
    # Xorg display server
    'xorg-server'               # Xorg X server
    'xorg-apps'                 # Additional Xorg packages
    'xorg-xinit'                # Xorg initialisation program

    # Display drivers
    'mesa'                      # Open-source OpenGL implementation
    'vulkan-icd-loader'         # Vulkan Installable Client Driver (ICD) Loader
)

printf "\n Installing display components\n\n"
sudo pacman -S "${PKGS[@]}" --needed --noconfirm

# Drivers
./hw-specific/amdgpu.sh
#./hw-specific/intel.sh
#./hw-specific/nvidia.sh

status=$?
if [ $status -eq 0 ]
then
    printf "\n Configuring display components\n\n"
    ./setup/04-display.sh
    printf "\n Display components done\n\n"
else
    printf "\n Display components failed!\n\n"
fi
