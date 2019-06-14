#!/bin/bash

#
# Printing Components
#

PKGS=(
    'cups'                  # The CUPS Printing System
    'cups-pdf'              # PDF printer for CUPS
    'system-config-printer' # Printer configuration tool

sudo pacman -S "${PKGS[@]}" --needed

# Begin printing configuration
./712-printing-setup.sh
