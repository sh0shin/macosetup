#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Users & Groups
[[ "${_users_groups_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Guest User
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool "${_users_groups_guest_enabled:-false}"

# Login Options

# Automatic login
if [[ -n "${_users_groups_autologin_user}" ]]
then
  sudo defaults write /Library/Preferences/com.apple.loginwindow autoLoginUser -string "${_users_groups_autologin_user}"
else
  sudo defaults delete /Library/Preferences/com.apple.loginwindow autoLoginUser 2>/dev/null
fi

# Display login window as: Name and password
sudo defaults write /Library/Preferences/com.apple.loginwindow SHOWFULLNAME -bool "${_users_groups_show_fullname:-true}"

# Disable Show the Sleep, Restart and Shut Down buttons
sudo defaults write /Library/Preferences/com.apple.loginwindow PowerOffDisabled -bool "${_users_groups_poweroff_disabled:-true}"

# Show Input menu in login window
sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool "${_users_groups_inputmenu:-false}"

# Show password hints
sudo defaults write /Library/Preferences/com.apple.loginwindow RetriesUntilHint -int "${_users_groups_password_hint:-0}"

# Show fast user switching menu as
# 0 : Full Name
# 1 : Account Name
# 2 : Icon
defaults write NSGlobalDomain userMenuExtraStyle -int "${_users_groups_switching_menu:-1}"

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
