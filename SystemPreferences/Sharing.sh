#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Sharing
[[ "${_sharing_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Computer Name
sudo systemsetup -setcomputername "${_sharing_computername:-macOSetup}"
sudo systemsetup -setlocalsubnetname "${_sharing_computername:-macOSetup}"
#sudo scutil --set ComputerName "${_computername:-macOSetup}"
#sudo scutil --set LocalHostName "${_computername:-macOSetup}"

# File Sharing
## Remove Public Folder
#_folder="${_fullname}’s Public Folder"
#sudo sharing -r "$_folder"
#sudo rm -rf ~/Public

# Remote Login
sudo systemsetup -f -setremotelogin "${_sharing_remotelogin:-off}" 2>/dev/null

# vim: set syn=bash sw=2 ts=2 et :
# eof
