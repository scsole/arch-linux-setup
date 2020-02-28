#!/bin/bash

#
# Pacman Packages
#

PKGS=(
    # Terminal Utilities
    'bash-completion'           # Tab completion for Bash
    'cpupower'                  # Utilities to assist with CPU frequency scaling
    'htop'                      # Interactive process viewer
    'i7z'                       # Intel i7 CPU reporting tool
    'light'                     # Change brightness on backlight-controllers
    'neofetch'                  # Display system information
    'openssh'                   # Remote login with the SSH protocol
    'rsync'                     # Sync remote files
    'tlp'                       # Linux Advanced Power Management
    'tlp-rdw'                   # TLP - Radio Device Wizard
    'tree'                      # Directory listing program
    'wget'                      # Retrieve remote content
    'xdg-user-dirs'             # Manage user directories
    'zip'                       # Create and modify zip files
    'unzip'                     # Extract and view files in .zip archives

    # Storage Drivers / Utilities
    'dosfstools'                # DOS filesystem utilities
    'exfat-utils'               # exFAT filesystem utilities
    'f2fs-tools'                # f2fs filesystem utilities
    'e2fsprogs'                 # Ext2/3/4 filesystem utilities
    'ntfs-3g'                   # NTFS filesystem utilities
    'xfsprogs'                  # XFS filesystem utilities
    'nfs-utils'                 # Tools for Network File Systems
    'smbclient'                 # Tools for accessing SMB filespaces and printers
    'parted'                    # Disk utility
    'sshfs'                     # SSH File Transfer Protocol
    
    # Development
    'astyle'                    # Formatter for C, C++, C#, and Java source code
    'android-tools'             # Android platform tools
    'android-udev'              # Udev rules to connect Android devices
    'flatpak'                   # A tool for package distribution
    'git'                       # Distributed version control system
    'jdk-openjdk'               # Java development kit
    'python'                    # Python scripting language
    'python-pip'                # Tool for installing Python packages
    'ruby'                      # Ruby programming language
    'valgrind'                  # Helps find memory-management problems in programs
    'gdb'                       # The GNU Debugger
    'gnuplot'                   # Plotting package

    # Productivity
    'hunspell'                  # Spellchecker
    'hunspell-en_GB'            # GB English spellcheck dictionaries
    'hunspell-en_US'            # US English spellcheck dictionaries
    'hyphen'                    # Hyphenation rules
    'hyphen-en'                 # English hyphenation rules
    'libmythes'                 # Thesaurus
    'mythes-en'                 # English thesaurus
    'libreoffice-fresh'         # LibreOffice
    'speedcrunch'               # A powerful calculator

    # Media and codecs
    'ffmpeg'                    # Record, convert, and stream media
    'intel-media-sdk'           # Intel QuickSync support for ffmpeg
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

    # Network and Internet
    'firefox'                   # Mozilla's Web browser
    'filezilla'                 # FTP, FTPS, and SFTP Client
    'transmission-gtk'          # BitTorrent client
    'signal-desktop'            # Signal private messaging
    'discord'                   # Voice and text chat

    # Applications
    'blender'                   # 3D graphics creation suite
    'code'                      # The Open Source build of Visual Studio Code
    'gvim'                      # A highly configurable text editor
    'openscad'                  # The programmers solid 3D CAD modeller
    'rxvt-unicode'              # Terminal emulator
    'thunar'                    # XFCE File manager
    'vlc'                       # Video player

    # Utilities
    'arandr'                    # XRandR front end
    'lxappearance'              # GTK+ theme switcher
)

printf "\n Installing Packages \n\n"
sudo pacman -S "${PKGS[@]}" --needed
