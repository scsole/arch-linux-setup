#!/bin/bash

#
# System
#

# Swap space adjustments
sudo tee /etc/sysctl.conf <<EOF
vm.swappiness=10
vm.vfs_cache_pressure=50
EOF

# Enable automatic swap management
sudo tee -a /etc/systemd/swap.conf <<EOF

zram_enabled=0
zswap_enabled=1
swapfc_enabled=1
EOF
sudo systemctl enable systemd-swap



#
# Power management
#

# Enable TLP
#sudo systemctl enable tlp.service
#sudo systemctl enable NetworkManager-dispatcher.service
#sudo systemctl mask systemd-rfkill.service
#sudo systemctl mask systemd-rfkill.socket

# Enable thermald
sudo systemctl enable thermald.service



#
# User permissions
#

sudo usermod -aG uucp $USER     # access serial devices
#sudo usermod -aG lock $USER     # required for Arduino IDE
#sudo usermod -aG input $USER    # required for libinput gestures
#sudo usermod -aG video $USER    # set backlight without root
sudo usermod -aG sys $USER      # administer printers in CUPS



#
# Usage tweaks
#

# Libinput gestures
#libinput-gestures-setup autostart

# Enable pacman colour output
sudo sed -i '/Color/s/^#//' /etc/pacman.conf

# Set vim as the default editor
sudo tee -a /etc/environment <<EOF
EDITOR=vim
EOF

# Create empty smb.conf for smbclient
sudo mkdir -p /etc/samba/
sudo touch /etc/samba/smb.conf

# Allow redshift to use GeoClue2
#sudo tee -a <<EOF
#
#[redshift]
#allowed=true
#system=false
#users=
#EOF

# Enable ratbagd
#sudo systemctl enable ratbagd.service
