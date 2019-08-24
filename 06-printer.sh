#!/bin/bash

#
# Printer
#
# TODO:
#  - Discover network printers with Avahi
#

PKGS=(
	'cups'						# The CUPS Printing System
	'cups-pdf'					# PDF printer for CUPS
	'gutenprint'				# Printer drivers
	'foomatic-db-gutenprint-ppds'	# Prebuilt ppd files
	'print-manager'				# A tool for managing print jobs and printers
#	'system-config-printer'		# Printer configuration tool and status applet
)

printf "\n Installing Printer Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\n Configuring Printing\n\n"
./setup/06-printer.sh

printf "\n Printer Components Done! \n\n"