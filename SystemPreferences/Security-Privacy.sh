#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Security & Privacy
[[ "${_security_privacy_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# General
# Require password immediately after sleep or screen saver begins (MOJAVE-10.14 NOT WORKING!!!!)
##defaults write com.apple.screensaver askForPassword -bool true
##defaults write com.apple.screensaver askForPasswordDelay -int 0

# Lock Message
if [[ -n "${_lock_message:-macOSetup}" ]]
then
  sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText -string "${_lock_message:-macOSetup}"
else
  sudo defaults delete /Library/Preferences/com.apple.loginwindow LoginwindowText 2>/dev/null
fi

# FileVault
_filevault_status="$(sudo fdesetup isactive)"
if [[ "${_filevault_enabled:-true}" == true ]]
then
  # Enable
  if [[ "$_filevault_status" = "false" ]]
  then
    sudo fdesetup enable -user "$(whoami)"
    echo 'Run "fdesetup status" in another terminal to see the progress.'
    read -p 'Press RETURN to continue.' -r
  fi
else
  # Disable
  if [[ "$_filevault_status" = "true" ]]
  then
    sudo fdesetup disable -user "$(whoami)"
    echo 'Run "fdesetup status" in another terminal to see the progress.'
    read -p 'Press RETURN to continue.' -r
  fi
fi

# Firewall
#sudo launchctl load /System/Library/LaunchDaemons/com.apple.alf.agent.plist
#sudo launchctl load /System/Library/LaunchAgents/com.apple.alf.useragent.plist
#/usr/libexec/ApplicationFirewall/socketfilterfw --help

# Turn On/Off Firewall
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate "${_firewall_state:-off}"

# Firewall Options
if [[ "${_firewall_state:-off}" == "on" ]]
then
  # Block all incoming connections
  sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setblockall "${_firewall_blockall:-off}"

  # Automatically allow built-in software to receive incoming connections
  sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setallowsigned "${_firewall_signed:-off}"

  # Automatically allow downloaded signed software to recive incoming connections
  sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setallowsignedapp "${_firewall_signedapp:-off}"

  # Enable stealth mode
  sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode "${_firewall_stealthmode:-off}"
fi

# Privacy
#TODO

# Databases:
#  /Library/Application\ Support/com.apple.TCC/TCC.db
#  ~/Library/Application\ Support/com.apple.TCC/TCC.db
#
# Location Services:  kTCCServiceLocation
# Contacts:           kTCCServiceSystemPolicyAllFiles
# Calendars:          kTCCServiceCalendar
# Reminders:          kTCCServiceReminders
# Photos:             TODO
# Camera:             TODO
# Microphone:         TODO
# Accessibility:      kTCCServiceAccessibility
# Full Disk Access:   kTCCServiceSystemPolicyAllFiles
# Automation:         TODO
# Advertising:        TODO
