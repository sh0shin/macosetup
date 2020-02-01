#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Disk Utility
[[ "${_disk_utility_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Show All Devices
defaults write com.apple.DiskUtility SidebarShowAllDevices -bool "${_disk_utility_show_all:-true}"

# vim: set syn=bash sw=2 ts=2 et :
# eof
