#!/bin/bash

#
# Storage Setup
#

# Enable (weekly) periodic trim
sudo systemctl enable fstrim.timer

# Index filesystems for search
updatedb

#
# Power management
#

# Enable TLP
sudo systemctl enable tlp.service
sudo systemctl enable tlp-sleep.service

# Enable thermald
sudo systemctl enable thermald.service
