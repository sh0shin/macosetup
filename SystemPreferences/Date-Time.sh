#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Date & Time
[[ "${_date_time_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Set date and time automatically (NTP)
sudo systemsetup -setusingnetworktime "${_date_time_usingnetworktime:-on}"
sudo systemsetup -setnetworktimeserver "${_date_time_networktimeserver:-de.pool.ntp.org}"

# Time Zone
sudo systemsetup -settimezone "${_date_time_timezone:-Europe/Berlin}"

# Clock
defaults write com.apple.menuextra.clock DateFormat -string "${_date_time_dateformat:-EEE d. MMM HH:mm:ss}"

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
