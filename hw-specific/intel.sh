#!/bin/bash

#
# Intel (CPU w/ integrated GPU)
#

###########
# WARNING
#
# I no longer have an Intel CPU. This script will NOT be updated.
# Please check the Arch Wiki for the latest recommended procedures.
###########

# Comment out if you are sure you want to proceed
exit 1

PKGS=(
    # Display drivers
    'mesa'                      # Open-source OpenGL implementation
    'xf86-video-intel'          # Intel video driver
    'vulkan-intel'              # Intel's Vulkan mesa driver

    # Hardware video acceleration
    'intel-media-driver'        # VA-API support for Broadwell+ iGPUs
    'libva-utils'               # VA-API utilities
    'intel-media-sdk'           # Intel QuickSync support for ffmpeg

    # GPGPU
    'intel-compute-runtime'     # Neo OpenCL runtime for Broadwell+ iGPUs
    'clinfo'                    # OpenCL utilities
)

printf "\n Installing Intel packages\n\n"
sudo pacman -S "${PKGS[@]}" --needed

status=$?
if [ $status -eq 0 ]
then
    printf "\n Intel components done\n\n"
else
    printf "\n Intel components failed!\n\n"
    exit $status
fi
