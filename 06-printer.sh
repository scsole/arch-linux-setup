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

printf "\n Installing Printer Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

status=$?
if [ $status -eq 0 ]; then
    printf "\n Configuring Printing\n\n"
    ./setup/06-printer.sh
    printf "\n Printer Components Done\n\n"
else
    printf "\n Printer Components Skipped\n\n"
fi
