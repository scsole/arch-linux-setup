#!/bin/bash

#
# Pacman Packages
#
# TODO:
#  - Categorise package list better
#

PKGS=(
	# Terminal Utilities
	'bash-completion'			# Tab completion for Bash
	'cpupower'					# Utilities to assist with CPU frequency scaling
	'compton'					# X compositor
	'curl'						# Retrieve remote content
	'feh'						# Fast image viewer
	'htop'						# Interactive process viewer
	'i7z'						# Intel i7 CPU reporting tool
	'light'						# Change brightness on backlight-controllers
	'mlocate'					# File searching utility
	'neofetch'					# Display system information
	'openssh'					# Remote login with the SSH protocol
	'rsync'						# Sync remote files
	'tlp'						# Linux Advanced Power Management
	'tree'						# Directory listing program
	'vim'						# A highly configurable text editor
	'wget'						# Retrieve remote content
	'xdg-user-dirs'				# Manage user directories
	'zip'						# Create and modify zipfiles
	'unzip'						# Extract and view files in .zip archives
	'gnu-plot'					# Plotting package

	# Storage
	'exfat-utils'				# Utilities for exFAT filesystems
	'nfs-utils'					# Support programs for Network File Systems
	'parted'					# Disk utility
	'sshfs'						# SSH File Transfer Protocol
	
	# Development
	'git'						# Distributed version control system
	'jdk-openjdk'				# Java development kit
	'openscad'					# The programmers solid 3D CAD modeller
	'python'					# Python scripting language
	'ruby'						# Ruby programming language
	'rxvt-unicode'				# Terminal emulator

	# Network and Internet
	'network-manager-applet'	# System tray applet for NM
	'firefox'					# Mozilla's Web browser
	'filezilla'					# FTP, FTPS, and SFTP Client
	'gufw'						# Firewall manager
	'transmission-qt'			# BitTorrent client

	# Productivity
	'hunspell'					# Spellchecker
	'hunspell-en_GB'			# GB English spellcheck dictionaries
	'hunspell-en_US'			# US English spellcheck dictionaries
	'hyphen'					# Hyphenation rules
	'hyphen-en'					# English hyphenation rules
	'libmythes'					# Thesaurus
	'mythes-en'					# English thesaurus
	'libreoffice-fresh'			# LibreOffice
	'thunderbird'				# Email client

	# Media
	'ffmpeg'					# Record, convert, and stream media
	'vlc'						# Video player

	# Fonts
	'noto-fonts'
	'ttf-dejavu'
	'ttf-liberation'
	'ttf-ubuntu-font-family'
	'ttf-hack'
	'ttf-font-awesome'

	# Other
	'thunar'					# Xfce file manager
	'arandr'					# XRandR front end
	'redshift'					# Shift screen colour temperature

)

printf "\nInstalling Packages\n\n"
sudo pacman -S "${PKGS[@]}" --needed