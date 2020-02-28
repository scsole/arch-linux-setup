#!/bin/bash

#
# Audio
#

PKGS=(
    'alsa-utils'                # Advanced Linux Sound Architecture (ALSA)
    'alsa-plugins'              # Extra ALSA plugins
    'pulseaudio'                # PulseAudio sound server
    'pulseaudio-alsa'           # ALSA configuration for PulseAudio
    'pulseaudio-zeroconf'       # Zeroconf support for PulseAudio
    'pamixer'                   # PulseAudio command line mixer
)

printf "\n Installing Audio Components\n\n"
sudo pacman -S "${PKGS[@]}" --needed

status=$?

if [ $status -eq 0 ]
then
    printf "\n Audio Components Done\n\n"
else
    printf "\n Audio Components Skipped\n\n"
fi
