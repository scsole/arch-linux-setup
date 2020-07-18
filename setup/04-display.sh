#!/bin/bash

#
# Xorg setup
#

# NB: The following config is only valid in Xorg.

# Pointer libinput Xorg config (disable mouse acceleration)
sudo tee /etc/X11/xorg.conf.d/30-pointer.conf <<EOF
Section "InputClass"
	Identifier "pointer"
	Driver "libinput"
	MatchIsPointer "yes"
	Option "AccelProfile" "flat"
	Option "AccelSpeed" "0"
EndSection
EOF

# My preferred touchpad libinput Xorg config
sudo tee /etc/X11/xorg.conf.d/30-touchpad.conf <<EOF
Section "InputClass"
	Identifier "touchpad"
	Driver "libinput"
	MatchIsTouchpad "on"
	Option "Tapping" "on"
	Option "ClickMethod" "clickfinger"
	Option "NaturalScrolling" "true"
EndSection
EOF
