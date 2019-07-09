#!/bin/bash

#
# Printer
#

PKGS=(
    'cups'                  # The CUPS Printing System
    'cups-pdf'              # PDF printer for CUPS
    'gutenprint'            # Printer drivers
    'foomatic-db-gutenprint-ppds'   # Prebuilt ppd files
    'print-manager'         # A tool for managing print jobs and printers
    'system-config-printer' # Printer configuration tool and status applet
)

# Install printer packages
sudo pacman -S "${PKGS[@]}" --needed

# Begin printer setup
./setup/06-printer.sh