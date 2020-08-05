#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Sharing
[[ "${_sharing_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Computer Name
#sudo systemsetup -setcomputername "${_sharing_computername:-macOSetup}"
#sudo systemsetup -setlocalsubnetname "${_sharing_computername:-macOSetup}"
sudo scutil --set ComputerName "${_sharing_computername:-macOSetup}"
sudo scutil --set HostName "${_sharing_computername:-macOSetup}"
sudo scutil --set LocalHostName "${_sharing_computername:-macOSetup}"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "${_sharing_computername:-macOSetup}"

# File Sharing
## Remove Public Folder
if [[ "${_sharing_remove_public_folder:-false}" == true ]]
then
  _sharing_folder="${_fullname}’s Public Folder"
  sudo sharing -r "$_sharing_folder"
  sudo rm -rf ~/Public
fi

# Remote Login
sudo systemsetup -f -setremotelogin "${_sharing_remotelogin:-off}"

# vim: set syn=bash sw=2 ts=2 et :
# eof
