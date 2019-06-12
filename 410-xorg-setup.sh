#!/bin/bash

#
# Xorg Configuration
#

# Intel xorg config
sudo cat <<EOF > /etc/X11/xorg.conf.d/20-intel.conf
Section "Device"
    Identifier  "Intel Graphics"
    Driver      "intel"
EndSection
EOF

# Pointer libinput configuration
sudo cat <<EOF > /etc/X11/xorg.conf.d/30-pointer.conf
Section "InputClass"
    Identifier "pointer"
    Driver "libinput"
    MatchIsPointer "yes"
    Option "AccelProfile" "flat"
    Option "AccelSpeed" "0"
EndSection
EOF

# Touchpad libinput configuration
sudo cat <<EOF > /etc/X11/xorg.conf.d/30-touchpad.conf
Section "InputClass"
    Identifier "touchpad"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "ClickMethod" "clickfinger"
    Option "NaturalScrolling" "true"
EndSection
EOF
