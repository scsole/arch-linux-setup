#!/bin/bash

#
# System Setup
#

# Enable periodic trim (weekly)
sudo systemctl enable fstrim.timer

# Index filesystems for search
updatedb
