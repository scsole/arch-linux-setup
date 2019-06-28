#!/bin/bash

#
# Audio
#

PKGS=(
    'alsa-utils'            # Advanced Linux Sound Architecture (ALSA)
    'alsa-plugins'          # Extra ALSA plugins
    'pulseaudio'            # PulseAudio sound server
    'pulseaudio-alsa'       # ALSA configuration for PulseAudio
    'pamixer'               # Command-line mixer for PulseAudio
)

# Install audio packages
sudo pacman -S "${PKGS[@]}" --needed
