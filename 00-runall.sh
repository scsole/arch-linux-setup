#!/bin/bash

# Run everything
chmod +x ./*/*.sh ./*.sh

./01-network.sh
./02-audio.sh
./03-bluetooth.sh
./04-xorg.sh
#./05-i3.sh
./05-kde.sh
./06-printer.sh
./07-packages.sh
./08-packages-multilib.sh
./09-packages-aur.sh
./10-system-setup.sh

printf "\n Finished Setup! \n\n"
