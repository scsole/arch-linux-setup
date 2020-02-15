#!/bin/bash

#
# Xorg Setup
#

# Pointer libinput Xorg configuration
sudo tee /etc/X11/xorg.conf.d/30-pointer.conf <<EOF
Section "InputClass"
	Identifier "pointer"
	Driver "libinput"
	MatchIsPointer "yes"
	Option "AccelProfile" "flat"
	Option "AccelSpeed" "0"
EndSection
EOF

# Touchpad libinput Xorg configuration
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

# NVIDIA configuration
sudo tee /etc/X11/xorg.conf.d/20-nvidia.conf <<EOF
Section "Module"
	Load "modesetting"
EndSection

Section "Device"
	Identifier "nvidia"
	Driver "nvidia"
	BusID "PCI:1:0:0"
	Option "AllowEmptyInitialConfiguration"
	Option "HardDPMS" "true"
EndSection
EOF

sudo tee -a /usr/share/sddm/scripts/Xsetup <<EOF

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 96
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

[Action]
Description=Update Nvidia module in initcpio
Depends=mkinitcpio
When=PostTransaction
NeedsTargets
Exec=/bin/sh -c 'while read -r trg; do case \$trg in linux) exit 0; esac; done; /usr/bin/mkinitcpio -P'
EOF
