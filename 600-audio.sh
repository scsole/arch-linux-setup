#!/bin/bash

#
# Audio Components
#

PKGS=(
    # Network manager
    'alsa-utils'            # Advanced Linux Sound Architecture (ALSA)
    'alsa-plugins'          # Extra ALSA plugins
    'pulseaudio'            # PulseAudio sound server
    'pulseaudio-alsa'       # ALSA configuration for PulseAudio
    'pamixer'               # Command-line mixer for PulseAudio
)

sudo pacman -S "${PKGS[@]}" --needed
