#!/bin/bash

#
# Audio
#

PKGS=(
    'alsa-utils'                # Advanced Linux Sound Architecture (ALSA)
    'alsa-plugins'              # Additional ALSA plugins
    'pulseaudio'                # PulseAudio sound server
    'pulseaudio-alsa'           # ALSA configuration for PulseAudio
    'pamixer'                   # PulseAudio command line mixer
)

printf "\n Installing audio components\n\n"
sudo pacman -S "${PKGS[@]}" --needed --noconfirm

status=$?

if [ $status -eq 0 ]
then
    printf "\n Audio components done\n\n"
else
    printf "\n Audio components failed!\n\n"
fi
