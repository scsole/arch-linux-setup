#!/bin/bash

#
# AMDGPU (Open source drivers)
#

PKGS=(
    # Display drivers
    'mesa'                      # Open-source OpenGL implementation
    'xf86-video-amdgpu'         # Open-source AMD video driver
    'vulkan-radeon'             # Radeon's Vulkan mesa driver

    # Hardware video acceleration
    'libva-mesa-driver'         # VA-API driver
    'libva-utils'               # VA-API utilities
    'mesa-vdpau'                # VDPAU driver
    'vdpauinfo'                 # VDPAU utilities

    # GPGPU
    'opencl-mesa'               # OpenCL runtime
    'clinfo'                    # OpenCL utilities
)

printf "\n Installing AMDGPU packages\n\n"
sudo pacman -S "${PKGS[@]}" --needed

status=$?
if [ $status -eq 0 ]
then
    printf "\n AMDGPU components done\n\n"
else
    printf "\n AMDGPU components failed!\n\n"
    exit $status
fi
