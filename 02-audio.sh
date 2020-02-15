#!/bin/bash

#
# Audio
#

PKGS=(
    'alsa-utils'                # Advanced Linux Sound Architecture (ALSA)
    'alsa-plugins'              # Extra ALSA plugins
    'pulseaudio'                # PulseAudio sound server
    'pulseaudio-alsa'           # ALSA configuration for PulseAudio
)

printf "\n Installing Audio Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

printf "\n Audio Components Done! \n\n"
