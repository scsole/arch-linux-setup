#!/bin/bash

#
# Printing Components
#

PKGS=(
    'cups'                  # The CUPS Printing System
    'cups-pdf'              # PDF printer for CUPS
    'gutenprint'            # Printer drivers
    'foomatic-db-gutenprint-ppds'   # Prebuilt ppd files
    'system-config-printer' # Printer configuration tool and status applet
)

sudo pacman -S "${PKGS[@]}" --needed
