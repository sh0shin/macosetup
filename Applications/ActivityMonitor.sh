#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Activity Monitor
[[ "${_activity_monitor_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Dock Icon
# Show CPU Usage
defaults write com.apple.ActivityMonitor IconType -int "${_activity_monitor_icon:-5}"

# Disk (Data)
defaults write com.apple.ActivityMonitor DiskGraphType -int "${_activity_monitor_disk_graph:-1}"

# Network (Data)
defaults write com.apple.ActivityMonitor NetworkGraphType -int "${_activity_monitor_network_graph:-1}"

# vim: set syn=bash sw=2 ts=2 et :
# eof
