#!/bin/bash

#
# Storage Setup
#

# Enable (weekly) periodic trim
sudo systemctl enable fstrim.timer

# Reduce swappiness
echo vm.swappiness=1 | sudo tee /etc/sysctl.d/99-swappiness.conf

# Reduce hibernation image size 
sudo tee /etc/tmpfiles.d/reduce-image-size.conf <<EOF
#   Path                    Mode UID  GID  Age  Argument
w   /sys/power/image_size   -    -    -    -    8589934592
EOF

# Index filesystems for search
sudo updatedb

#
# Power management
#

# Enable TLP
sudo systemctl enable tlp.service
sudo systemctl enable tlp-sleep.service

# Enable thermald
sudo systemctl enable thermald.service

#
# User permissions
#

sudo usermod -aG uucp "$USER"   # access serial devices
sudo usermod -aG lock "$USER"   # required for Arduino IDE
sudo usermod -aG input $USER    # required for libinput gestures
sudo usermod -aG vboxusers $USER    # access host USB devices in vbox

#
# Usage tweaks
#

# Configure Redshift to use automatic location
sudo tee -a /etc/geoclue/geoclue.conf <<EOF

[redshift]
allowed=true
system=false
users=
EOF

# Libinput gestures
libinput-gestures-setup autostart
