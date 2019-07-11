#!/bin/bash

#
# Pacman Packages
#

PKGS=(
    # Terminal Utilities
    'bash-completion'       # Tab completion for Bash
    'cpupower'              # Utilities to assist with CPU frequency scaling
    'curl'                  # Retrive remote content
    'ffmpegthumbs'          # Thumbnail creator for video files
    'htop'                  # Interactive process viewer
    'i7z'                   # Intel i7 CPU reporting tool
    'light'                 # Change brightness on backlight-controllers
    'mlocate'               # File searching utility
    'neofetch'              # Display system information
    'openssh'               # Remote login with the SSH protocol
    'rsync'                 # Sync remote files
    'tlp'                   # Linux Advanced Power Management
    'tree'                  # Directory listing program
    'vim'                   # A highly configurable text editor
    'wget'                  # Retrive remote content
    'xdg-user-dirs'         # Manage user directories

    # Storage
    'exfat-utils'           # Utilities for exFAT filesystems
    'gparted'               # Disk management (frontend for parted)
    'nfs-utils'             # Support programs for Network File Systems
    'parted'                # Disk utility
    'sshfs'                 # SSH File Transfer Protocol
    
    # Development
    'git'                   # Distributed version control system
    'jdk-openjdk'           # Java development kit
    'python'                # Python scripting language
    'rxvt-unicode'          # Terminal emulator

    # Network and Internet
    'firefox'               # Mozilla's Web browser
    'filezilla'             # FTP, FTPS, and SFTP Client
    'gufw'                  # Firewall manager
    'transmission-qt'       # BitTorrent client

    # Productivity
    'hunspell'              # Spellchecker
    'hunspell-en_GB'        # GB English spellcheck dictionaries
    'hunspell-en_US'        # US English spellcheck dictionaries
    'hyphen'                # Hyphenation rules
    'hyphen-en'             # English hyphenation rules
    'libmythes'             # Thesaurus
    'mythes-en'             # English thesaurus
    'libreoffice-fresh'     # LibreOffice

    # Media
    'ffmpeg'                # Record, convert, and stream media
    'vlc'                   # Video player

    # Fonts
    'noto-fonts'
    'ttf-font-awesome'
    'ttf-liberation'
    'ttf-ubuntu-font-family'
    'ttf-hack'
)

sudo pacman -S "${PKGS[@]}" --needed
