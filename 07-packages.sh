#!/bin/bash

#
# Pacman packages
#

PKGS=(
    # Utilities
    'accountsservice'           # Query and manipulate user accounts
    'bash-completion'           # Tab completion for Bash
    #'cpupower'                  # Utilities to assist with CPU frequency scaling
    'htop'                      # Interactive process viewer
    'light'                     # Change backlight brightness
    'lm_sensors'                # Hardware monitoring tools
    'neofetch'                  # Display system information
    'openssh'                   # Remote login with the SSH protocol
    'reflector'                 # Retrieve and filter the latest Pacman mirror list
    'rsync'                     # Sync remote files
    #'tlp'                       # Linux Advanced Power Management
    #'tlp-rdw'                   # TLP - Radio Device Wizard
    'systemd-swap'              # Script for automated swap space configuration
    'tree'                      # Directory listing program
    'wget'                      # Retrieve remote content
    'zip'                       # Create and modify zip files
    'unzip'                     # Extract and view files in .zip archives
    'unrar'                     # The RAR uncompression program
    'fwupd'                     # Allows session software to update firmware
    'usbutils'                  # USB Device Utilities
    'fprintd'                   # Service to access fingerprint readers
    'playerctl'                 # Media player controller for various players

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
    'docker'                    # Pack, ship and run applications as a lightweight container
    'docker-compose'            # Fast, isolated development environments using Docker
    'flatpak'                   # A tool for package distribution
    'git'                       # Distributed version control system
    'git-lfs'                   # Git Large File Storage extension
    'jdk11-openjdk'             # Java development kit 11
    'python'                    # Python scripting language
    'python-pip'                # Tool for installing Python packages
    'ruby'                      # Ruby programming language
    'valgrind'                  # Helps find memory-management issues in programs
    'gdb'                       # The GNU Debugger
    'gnuplot'                   # Plotting package
    'virtualbox'                # Virtualization software
    'virtualbox-host-modules-arch' # Virtualbox host kernel modules for Arch Kernel
    'vagrant'                   # Manage and configure virtualised environments
    'sqlitebrowser'             # SQLite Database browser

    # Productivity
    'hunspell'                  # Spellchecker
    'hunspell-en_GB'            # GB English spellcheck dictionaries
    'hunspell-en_US'            # US English spellcheck dictionaries
    'hyphen'                    # Hyphenation rules
    'hyphen-en'                 # English hyphenation rules
    'libmythes'                 # Thesaurus
    'mythes-en'                 # English thesaurus
    'speedcrunch'               # A powerful calculator

    # Network and Internet
    'firefox'                   # Mozilla's Web browser
    'filezilla'                 # FTP, FTPS, and SFTP Client
    'transmission-gtk'          # BitTorrent client
    'signal-desktop'            # Signal private messaging
    'telegram-desktop'          # Official Telegram Desktop client
    'discord'                   # Voice and text chat
    #'kget'                      # Download Manager

    # Applications
    'blender'                   # 3D graphics creation suite
    'kicad'                     # Electronic schematic and PCB design tools
    'kicad-library'             # Kicad component and footprint libraries
    'kicad-library-3d'          # Kicad 3D render model libraries
    'code'                      # The Open Source build of Visual Studio Code
    'gvim'                      # A highly configurable text editor
    'libreoffice-fresh'         # Office suite
    'openscad'                  # The programmers solid 3D CAD modeller
    #'rxvt-unicode'              # Terminal emulator
    'vlc'                       # Video player
    'pavucontrol'		# PulseAudio GTK volume control tool
    'pulseeffects'              # Audio effects for PA applications

    #'thunar'                    # XFCE File manager
    #'thunar-volman'             # Automatic management of removable devices in Thunar
    #'thunar-media-tags-plugin'  # Features for media files in Thunar
    #'gvfs'                      # Virtual filesystem implementation for GIO
    #'tumbler'                   # D-Bus service for applications to request thumbnails
    #'evince'                    # Document viewer
    #'eog'                       # An image viewing and cataloging program

    # Utilities
    #'arandr'                    # XRandR front end
    #'lxappearance'              # GTK+ theme switcher
    #'qt5ct'                     # Qt5 Configuration Utility
    #'pavucontrol-qt'            # PulseAudio volume control
    #'libratbag'                 # A DBus daemon to configure gaming mice
    #'piper'                     # GTK application to configure gaming mice

    # Media and codecs
    'gst-libav'                 # Libav codecs
    'gst-plugins-good'          # PulseAudio support and additional codecs
    'gst-plugins-ugly'          # Additional codecs
    'gst-plugins-bad'           # Additional codecs
    'ffmpeg'                    # Record, convert, and stream media
    'ffmpegthumbnailer'         # Lightweight video thumbnailer
    'raw-thumbnailer'           # Lightweight raw image thumbnailer

    # Fonts
    'noto-fonts'
    'noto-fonts-cjk'
    'noto-fonts-emoji'
    'noto-fonts-extra'
    'ttf-dejavu'
    'ttf-liberation'
    'ttf-hack'
    'ttf-font-awesome'
    'ttf-opensans'

    # Themes
    #'breeze'
    #'breeze-gtk'
    #'gtk3'
    #'gnome-themes-extra'
)

printf "\n Installing packages\n\n"

sudo pacman -S "${PKGS[@]}" --needed
status=$?

if [ $status -ne 0 ]; then
    printf "\n Warning: Pacman exited with ${status}\n\n"
else
    printf "\n Packages installed successfully\n\n"
fi
