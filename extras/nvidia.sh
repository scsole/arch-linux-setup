#!/bin/bash

#
# NVIDIA Packages
#

PKGS=(
    'nvidia-dkms'               # NVIDIA drivers for Linux
    'nvidia-utils'              # NVIDIA driver utilities
#    'lib32-nvidia-utils'        # 32-bit NVIDIA driver utilities
    'cuda'                      # NVIDIA's GPU programming toolkit
    
    # Helpers
    'nvidia-settings'           # Tool for configuring the NVIDIA graphics driver
    'vdpauinfo'                 # Query capabilities of a VDPAU device
    'optimus-manager'           # Utility to handle GPU switching on Optimus laptops
)

printf "\n Installing NVIDIA Packages\n\n"
yay -S "${PKGS[@]}" --needed

status=$?
if [ $status -eq 0 ]
then
    printf "\n Beginning NVIDIA Configuration\n\n"
else
    printf "\n NVIDIA Configuration Skiped\n\n"
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

printf "\n NVIDIA Components Done\n\n"
