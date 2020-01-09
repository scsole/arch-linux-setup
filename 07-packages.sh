#!/bin/bash

#
# Pacman Packages
#

PKGS=(
    # Terminal Utilities
    'bash-completion'           # Tab completion for Bash
    'cpupower'                  # Utilities to assist with CPU frequency scaling
    'curl'                      # Retrieve remote content
    'htop'                      # Interactive process viewer
    'i7z'                       # Intel i7 CPU reporting tool
#    'light'                     # Change brightness on backlight-controllers
    'neofetch'                  # Display system information
    'openssh'                   # Remote login with the SSH protocol
    'rsync'                     # Sync remote files
    'tlp'                       # Linux Advanced Power Management
    'tree'                      # Directory listing program
    'gvim'                      # A highly configurable text editor
    'wget'                      # Retrieve remote content
    'xdg-user-dirs'             # Manage user directories
    'zip'                       # Create and modify zip files
    'unzip'                     # Extract and view files in .zip archives

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
#    'flatpak'                   # A tool for package distribution
    'git'                       # Distributed version control system
    'jdk-openjdk'               # Java development kit
    'openscad'                  # The programmers solid 3D CAD modeller
    'python'                    # Python scripting language
    'python-pip'                # Tool for installing Python packages
    'ruby'                      # Ruby programming language
#    'rxvt-unicode'              # Terminal emulator
    'arduino'                   # Arduino prototyping platform SDK
    'arduino-docs'              # Arduino IDE reference documentation
    'valgrind'                  # Helps find memory-management problems in programs
    'gdb'                       # The GNU Debugger
    'gnuplot'                   # Plotting package

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
    'gst-libav'                 # Libav codecs
    'gst-plugins-good'          # PulseAudio support and additional codecs
    'gst-plugins-ugly'          # Additional codecs
    'gst-plugins-bad'           # Additional codecs

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

    # Other
#    'virtualbox'                # VirtualBox 
#    'virtualbox-guest-iso'      # Guest additions disc for vbox
#    'arandr'                    # XRandR front end
#    'lxappearance'              # GTK+ theme switcher
#    'compton'                   # X compositor that may fix tearing issues

    # Games
    'lutris'                    # Open Gaming Platform
)

printf "\n Installing Packages \n\n"
sudo pacman -S "${PKGS[@]}" --needed
