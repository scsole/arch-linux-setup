#!/bin/bash

#
# NVIDIA GPU (Optimus Laptop)
#

###########
# WARNING
#
# I no longer have a NVIDIA GPU. This script will NOT be updated.
# Please check the Arch Wiki for the latest recommended procedures.
###########

# Comment out if you are sure you want to proceed
exit 1

PKGS=(
    'nvidia-dkms'               # NVIDIA drivers for Linux
    'nvidia-utils'              # NVIDIA driver utilities
    'cuda'                      # NVIDIA's GPU programming toolkit
    
    # Helpers
    'nvidia-settings'           # Tool for configuring the NVIDIA graphics driver
    'vdpauinfo'                 # VDPAU utilities
    'clinfo'                    # OpenCL utilities
    'optimus-manager'           # Utility to handle GPU switching on Optimus laptops
)

printf "\n Installing NVIDIA packages\n\n"
yay -S "${PKGS[@]}" --needed

status=$?
if [ $status -eq 0 ]
then
    printf "\n Beginning NVIDIA configuration\n\n"
else
    printf "\n NVIDIA components failed!"
    printf "\n Has an AUR helper (yay) been installed yet?\n\n"
    exit $status
fi

# Enable dynamic power management with the NVIDIA driver
sudo tee /etc/modprobe.d/nvidia.conf <<EOF
options nvidia "NVreg_DynamicPowerManagement=0x02"
EOF

# Make sure initramfs is updated after a NVIDIA driver update
sudo tee /etc/pacman.d/hooks/nvidia.hook <<EOF
[Trigger]
Operation = Install
Operation = Upgrade
Operation = Remove
Type = Package
Target = nvidia-dkms
Target = linux-zen

[Action]
Description = Update Nvidia module in initcpio
Depends = mkinitcpio
When = PostTransaction
NeedsTargets
Exec = /bin/sh -c 'while read -r trg; do case \$trg in linux-zen) exit 0; esac; done; /usr/bin/mkinitcpio -P'
EOF

printf "\n NVIDIA components done\n\n"
