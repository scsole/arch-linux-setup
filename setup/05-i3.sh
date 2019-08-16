#!/bin/bash

#
# i3 Setup
#

# Configure xinit to start i3
cp /etc/X11/xinit/xinitrc ~/.xinitrc
sed -i '/twm/,/exec/s/^/#/' ~/.xinitrc
echo exec i3 >> ~/.xinitrc
