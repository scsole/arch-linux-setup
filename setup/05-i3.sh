#!/bin/bash

#
# i3 Setup
#

# Configure xinit
cp /etc/X11/xinit/xinitrc ~/.xinitrc
sed -i '/twm/,/exec/s/^/#/' ~/.xinitrc
echo exec i3 >> ~/.xinitrc
