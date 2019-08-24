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
# Usage tweaks
#

# Configure Redshift to use automatic location
sudo tee -a /etc/geoclue/geoclue.conf <<EOF

[redshift]
allowed=true
system=false
users=
EOF

#
# User permissions
#

# Access serial devices
sudo usermod -aG uucp "$USER"
sudo usermod -aG lock "$USER" # required for Arduino IDE