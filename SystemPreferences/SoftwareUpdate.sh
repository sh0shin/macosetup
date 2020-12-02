#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Software Update
[[ "${_software_update_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Automatically keep my Mac up to date
# Advanced
# Automatically
# Check for updates
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -bool "${_software_update_auto_check:-true}"

# Download new updates when available
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -bool "${_software_update_auto_download:-false}"

# Install macOS updates
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticallyInstallMacOSUpdates -bool "${_software_update_autoinstall_macos:-false}"

# Install app updates from the App Store
#TODO

# Install system data files and security updates
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate ConfigDataInstall -bool "${_software_update_autoinstall_data_security:-true}"
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CriticalUpdateInstall -bool "${_software_update_autoinstall_data_security:-true}"

# Update
if [[ ${_software_update_list:-false} == true ]]
then
  softwareupdate --list
fi

if [[ ${_software_update_install_all:-false} == true ]]
then
  softwareupdate --install --all
fi

if [[ ${_software_update_install_recommended:-false} == true ]]
then
  softwareupdate --install --recommended
fi

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
