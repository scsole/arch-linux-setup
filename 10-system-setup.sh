#!/bin/bash

#
# Storage Setup
#

# Enable (weekly) periodic trim
sudo systemctl enable fstrim.timer

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
sudo gpasswd -a $USER input     # access to input devices

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
