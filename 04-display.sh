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
    'xf86-video-intel'          # Intel video drivers
    'vulkan-intel'              # Intel's Vulkan mesa driver
    'vulkan-icd-loader'         # Vulkan Installable Client Driver (ICD) Loader

    # Hardware video acceleration
    'intel-media-driver'        # VA-API support for Broadwell+ iGPUs
    'libva-utils'               # Intel VA-API Media Applications and Scripts for libva

    # GPGPU
    'intel-compute-runtime'     # Neo OpenCL runtime for Broadwell+ iGPUs
    'clinfo'                    # List OpenCL platforms, devices present and ICD loader properties
)

printf "\n Installing Display Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

status=$?
if [ $status -eq 0 ]
then
    rintf "\n Configuring Display Components\n\n"
    ./setup/04-display.sh
    printf "\n Display Components Done\n\n"
else
    printf "\n Display Components Skipped\n\n"
fi
