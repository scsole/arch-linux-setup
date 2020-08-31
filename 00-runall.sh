#!/bin/bash

./01-network.sh
./02-audio.sh
./03-bluetooth.sh
./04-display.sh
./05-gnome.sh
#./05-i3.sh                 # Unmaintained
./05-sway.sh
#./05-kde.sh                # Unmaintained
./06-printer.sh
./07-packages.sh
./07-packages-flatpak.sh
#./08-packages-multilib.sh  # Unmaintained
./09-packages-aur.sh
./10-system-setup.sh

printf "\n Finished Setup! \n\n"
