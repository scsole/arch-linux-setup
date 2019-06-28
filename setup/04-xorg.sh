#!/bin/bash

#
# Xorg Setup
#

# Intel Xorg config
sudo tee /etc/X11/xorg.conf.d/20-intel.conf <<EOF
Section "Device"
    Identifier  "Intel Graphics"
    Driver      "intel"
EndSection
EOF

# Pointer libinput configuration
sudo tee /etc/X11/xorg.conf.d/30-pointer.conf <<EOF
Section "InputClass"
    Identifier "pointer"
    Driver "libinput"
    MatchIsPointer "yes"
    Option "AccelProfile" "flat"
    Option "AccelSpeed" "0"
EndSection
EOF

# Touchpad libinput configuration
sudo tee /etc/X11/xorg.conf.d/30-touchpad.conf <<EOF
Section "InputClass"
    Identifier "touchpad"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "ClickMethod" "clickfinger"
    Option "NaturalScrolling" "true"
EndSection
EOF

# Make sure initramfs is updated after a NVIDIA driver update
sudo tee /etc/pacman.d/hooks/nvidia.hook <<EOF
[Trigger]
Operation=Install
Operation=Upgrade
Operation=Remove
Type=Package
Target=nvidia
Target=linux
# Change the linux part above and in the Exec line if a different kernel is used

[Action]
Description=Update Nvidia module in initcpio
Depends=mkinitcpio
When=PostTransaction
NeedsTargets
Exec=/bin/sh -c 'while read -r trg; do case $trg in linux) exit 0; esac; done; /usr/bin/mkinitcpio -P'
EOF
