#!/bin/bash

#
# Printer
#

PKGS=(
    'cups'                      # The CUPS Printing System
    'cups-pdf'                  # PDF printer for CUPS
    'gutenprint'                # Printer drivers
    'system-config-printer'     # Printer configuration tool and status applet
)

printf "\n Installing printer components\n\n"
sudo pacman -S "${PKGS[@]}" --needed --noconfirm

status=$?
if [ $status -eq 0 ]; then
    printf "\n Configuring printing\n\n"
    ./setup/06-printer.sh
    printf "\n Printer components done\n\n"
else
    printf "\n Printer components failed!\n\n"
fi
