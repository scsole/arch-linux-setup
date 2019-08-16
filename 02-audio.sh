#!/bin/bash

#
# Audio
#

PKGS=(
	'alsa-utils'				# Advanced Linux Sound Architecture (ALSA)
	'alsa-plugins'				# Extra ALSA plugins
	'pulseaudio'				# PulseAudio sound server
	'pulseaudio-alsa'			# ALSA configuration for PulseAudio
)

printf "\nInstalling Audio Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\nAudio Components Done! \n\n"