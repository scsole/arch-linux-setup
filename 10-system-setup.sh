#!/bin/bash

#
# Storage Setup
#

# Enable (weekly) periodic trim
sudo systemctl enable fstrim.timer

# Reduce swappiness
echo vm.swappiness=1 | sudo tee /etc/sysctl.d/99-swappiness.conf

# Reduce hibernation image size 
#sudo tee /etc/tmpfiles.d/reduce-image-size.conf <<EOF
#   Path                    Mode UID  GID  Age  Argument
#w   /sys/power/image_size   -    -    -    -    8589934592
#EOF

#
# Power management
#

# Enable TLP
sudo systemctl enable tlp.service
sudo systemctl enable NetworkManager-dispatcher.service
sudo systemctl mask systemd-rfkill.service
suso systemctl mask systemd-rfkill.socket

# Enable thermald
sudo systemctl enable thermald.service


# Disable auto power-on of Bluetooth adapter (Blueman)
gsettings set org.blueman.plugins.powermanager auto-power-on false

#
# User permissions
#

sudo usermod -aG uucp "$USER"   # access serial devices
sudo usermod -aG lock "$USER"   # required for Arduino IDE
sudo usermod -aG input $USER    # required for libinput gestures
#sudo usermod -aG vboxusers $USER    # access host USB devices in vbox

#
# Usage tweaks
#

# Configure Redshift to use automatic location
#sudo tee -a /etc/geoclue/geoclue.conf <<EOF
#
#[redshift]
#allowed=true
#system=false
#users=
#EOF

# Libinput gestures
#libinput-gestures-setup autostart

# Enable pacman colour output
sudo sed -i '/Color/s/^#//' /etc/pacman.conf


# Replace vi with vim
sudo tee -a /etc/environment <<EOF
EDITOR=vim
EOF

#
# System
#

# Ensure the ICD loader from the ocl-icd package is used
echo '/usr/lib' | sudo tee /etc/ld.so.conf.d/00-usrlib.conf
