#!/bin/bash

#
# Pacman Packages
#
# TODO:
#  - Categorise package list better
#

PKGS=(
    # Terminal Utilities
    'bash-completion'           # Tab completion for Bash
    'cpupower'                  # Utilities to assist with CPU frequency scaling
    'compton'                   # X compositor
    'curl'                      # Retrieve remote content
    'feh'                       # Fast image viewer
    'thunar'                    # Simple, vim-like file manager
    'gptfdisk'                  # Tool for partitioning GPT disks
    'htop'                      # Interactive process viewer
    'i7z'                       # Intel i7 CPU reporting tool
    'light'                     # Change brightness on backlight-controllers
    'mlocate'                   # File searching utility
    'neofetch'                  # Display system information
    'openssh'                   # Remote login with the SSH protocol
    'pulsemixer'                # Mixer for pulseaudio
    'rsync'                     # Sync remote files
    'tlp'                       # Linux Advanced Power Management
    'tree'                      # Directory listing program
    'gvim'                      # A highly configurable text editor
    'wget'                      # Retrieve remote content
    'xdg-user-dirs'             # Manage user directories
    'zip'                       # Create and modify zip files
    'unzip'                     # Extract and view files in .zip archives
    'gnuplot'                   # Plotting package
    'numlockx'                  # Turns on the numlock key in X11

    # Storage
    'exfat-utils'               # Utilities for exFAT filesystems
    'nfs-utils'                 # Support programs for Network File Systems
    'parted'                    # Disk utility
    'sshfs'                     # SSH File Transfer Protocol
    
    # Development
    'astyle'                    # Formatter for C, C++, C#, and Java source code
    'android-tools'             # Android platform tools
    'android-udev'              # Udev rules to connect Android devices
    'cuda'                      # NVIDIA's GPU programming toolkit
    'opencl-nvidia'             # OpenCL implementation for NVIDIA
    'flatpak'                   # A tool for package distribution
    'git'                       # Distributed version control system
    'jdk-openjdk'               # Java development kit
    'openscad'                  # The programmers solid 3D CAD modeller
    'python'                    # Python scripting language
    'python-pip'                # Tool for installing Python packages
    'ruby'                      # Ruby programming language
    'rxvt-unicode'              # Terminal emulator
    'arduino'                   # Arduino prototyping platform SDK
    'arduino-docs'              # Arduino IDE reference documentation
    'valgrind'                  # Helps find memory-management problems in programs
    'gdb'                       # The GNU Debugger

    # Network and Internet
    'firefox'                   # Mozilla's Web browser
    'filezilla'                 # FTP, FTPS, and SFTP Client
    'transmission-qt'           # BitTorrent client

    # Productivity
    'hunspell'                  # Spellchecker
    'hunspell-en_GB'            # GB English spellcheck dictionaries
    'hunspell-en_US'            # US English spellcheck dictionaries
    'hyphen'                    # Hyphenation rules
    'hyphen-en'                 # English hyphenation rules
    'libmythes'                 # Thesaurus
    'mythes-en'                 # English thesaurus
    'libreoffice-fresh'         # LibreOffice
    'okular'                    # Document Viewer
    'speedcrunch'               # A powerful calculator
    'discord'                   # Voice and text chat for gamers

    # Media
    'ffmpeg'                    # Record, convert, and stream media
    'ffmpegthumbs'              # FFmpeg-based thumbnail creator for video files
    'vlc'                       # Video player

    # Fonts
    'noto-fonts'
    'noto-fonts-cjk'
    'noto-fonts-emoji'
    'noto-fonts-extra'
    'ttf-dejavu'
    'ttf-liberation'
    'ttf-ubuntu-font-family'
    'ttf-hack'
    'ttf-font-awesome'

    # Themes
    'breeze'
    'breeze-gtk'

    # Other
    'arandr'                    # XRandR front end
    'lxappearance'              # GTK+ theme switcher
    'redshift'                  # Shift screen colour temperature
    'compton'                   # X compositor that may fix tearing issues
    'gnome-color-manager'       # GNOME Color Profile Tools
)

printf "\n Installing Packages \n\n"
sudo pacman -S "${PKGS[@]}" --needed
