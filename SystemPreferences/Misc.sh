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

# Disable FileVault Auto Login
sudo defaults write /Library/Preferences/com.apple.loginwindow DisableFDEAutoLogin -bool "${_misc_disable_fde_auto_login:-false}"

# Disable Reopen windows when logging back in
defaults write com.apple.loginwindow TALLogoutSavesState -bool "${_misc_logout_saves_state:-false}"

# Show ~/Library
if [[ "${_misc_nohidden_library:-false}" == true ]]
then
  chflags nohidden ~/Library
fi

# Show /Volumes
if [[ "${_misc_nohidden_volumes:-false}" == true ]]
then
  sudo chflags nohidden /Volumes
fi

# Rename /
if [[ "${_misc_root_volume_rename:-false}" == true ]]
then
  diskutil rename / "${_misc_root_volume_name:-macOSystem}"
fi

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

# Show battery percent in taskbar
defaults write com.apple.menuextra.battery "ShowPercent" -string "${_misc_show_battery_percentage:-NO}"

# Restart
killall -1 SystemUIServer

# vim: set syn=bash sw=2 ts=2 et :
# eof
