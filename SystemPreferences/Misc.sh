#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Misc
[[ "${_misc_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Disable 'You are attempting to connect to the server' dialog
# https://support.apple.com/en-us/HT207112
sudo defaults write /Library/Preferences/com.apple.NetworkAuthorization AllowUnknownServers -bool "${_misc_allow_unknown_servers:-true}"

# Display Admin Host Info on loginwindow
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo -string "${_misc_admin_host_info:-HostName}"

# Disable FileVault enabled Auto Login
sudo defaults write /Library/Preferences/com.apple.loginwindow DisableFDEAutoLogin -bool "${_misc_disable_fde_auto_login:-true}"

# Disable Reopen windows when logging back in
defaults write com.apple.loginwindow TALLogoutSavesState -bool "${_misc_logout_saves_state:-false}"

exit 0
# TODO

# Show ~/Library
chflags nohidden ~/Library

# Show /Volumes
sudo chflags nohidden /Volumes

# Rename /
diskutil rename / "${_misc_root_volume_name:-System}"

# Change hibernate mode
# `man pmset`
#sudo pmset hibernatemode 25

# Menu Extras (System UI Server)
defaults write com.apple.systemuiserver "NSStatusItem Visible Siri" -bool false

defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.TimeMachine" -bool true
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.airport" -bool true
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.battery" -bool true
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" -bool true
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.clock" -bool true
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.volume" -bool true

defaults write com.apple.systemuiserver menuExtras -array \
  "/System/Library/CoreServices/Menu Extras/AirPort.menu" \
  "/System/Library/CoreServices/Menu Extras/Battery.menu" \
  "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
  "/System/Library/CoreServices/Menu Extras/Clock.menu" \
  "/System/Library/CoreServices/Menu Extras/Displays.menu" \
  "/System/Library/CoreServices/Menu Extras/TimeMachine.menu" \
  "/System/Library/CoreServices/Menu Extras/Volume.menu"

# Restart
killall -1 SystemUIServer

# vim: set syn=bash sw=2 ts=2 et :
# eof
