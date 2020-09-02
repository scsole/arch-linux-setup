#!/bin/bash

. ./.env

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

swapfc_enabled=1
EOF
sudo systemctl enable systemd-swap

# Load all AppArmor profiles on startup
sudo systemctl enable apparmor.service


#
# Power management
#

sudo sensors-detect --auto

if [ $LAPTOP == true ]; then
    # Enable TLP
    sudo systemctl enable tlp.service
    sudo systemctl enable NetworkManager-dispatcher.service
    sudo systemctl mask systemd-rfkill.service
    sudo systemctl mask systemd-rfkill.socket

    # Enable thermald
    # sudo systemctl enable thermald.service

    # Enable auto-cpufreq
    sudo systemctl enable auto-cpufreq
fi


#
# User permissions
#

# sudo usermod -aG lock $USER         # Required for Arduino IDE
sudo usermod -aG uucp $USER         # Access serial devices
sudo usermod -aG input $USER        # Required for libinput gestures and fingerprint sensor
sudo usermod -aG video $USER        # Set backlight without root
sudo usermod -aG sys $USER          # Administer printers in CUPS
sudo usermod -aG docker $USER       # Use `docker` without root
sudo usermod -aG vboxusers $USER    # Access USB devices in gest VMs

# Allow users in the `video` group  to change brightness
sudo tee /etc/udev/rules.d/backlight.rules <<EOF
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="acpi_video0", RUN+="/bin/chgrp video /sys/class/backlight/%k/brightness"
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="acpi_video0", RUN+="/bin/chmod g+w /sys/class/backlight/%k/brightness"
EOF


#
# Usage tweaks
#

# Libinput gestures
# libinput-gestures-setup autostart

# Enable pacman colour output
sudo sed -i '/Color/s/^#//' /etc/pacman.conf

# Set vim as the default editor
sudo tee -a /etc/environment <<EOF
EDITOR=vim
EOF

# Create empty smb.conf for smbclient
sudo mkdir -p /etc/samba/
sudo touch /etc/samba/smb.conf

# Hide LSP Plugins from GNOME application launcher
if command -v pulseeffects &> /dev/null; then
    echo "[Desktop Entry]
    Hidden=true" > /tmp/hidden
    find /usr -name "*lsp_plug*desktop" 2>/dev/null | cut -f 5 -d '/' | xargs -I {} cp /tmp/hidden ~/.local/share/applications/{}
fi

# Configre makepkg
sudo tee /etc/makepkg.conf <<EOF
MAKEFLAGS="-j$(nproc)"
EOF


#
# Services
#

# sudo systemctl enable ratbagd.service
sudo systemctl enable docker.service
