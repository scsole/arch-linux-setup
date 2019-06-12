#!/bin/bash

#
# System Configuration
#

# Enable periodic trim (weekly)
sudo systemctl enable fstrim.timer

# Index filesystems for search
updatedb
