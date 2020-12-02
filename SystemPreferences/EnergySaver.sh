#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Energy Saver
[[ "${_energy_saver_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Battery
# Turn display off after (n minutes)
sudo /usr/libexec/PlistBuddy -c "Set :'Battery Power':'Display Sleep Timer' ${_battery_display_sleep:-5}" /Library/Preferences/com.apple.PowerManagement.plist || \
  sudo /usr/libexec/PlistBuddy -c "Add :'Battery Power':'Display Sleep Timer' integer ${_battery_display_sleep:-5}" /Library/Preferences/com.apple.PowerManagement.plist

sudo /usr/libexec/PlistBuddy -c "Set :'Battery Power':'System Sleep Timer' ${_battery_system_sleep:-5}" /Library/Preferences/com.apple.PowerManagement.plist || \
  sudo /usr/libexec/PlistBuddy -c "Add :'Battery Power':'System Sleep Timer' integer ${_battery_system_sleep:-5}" /Library/Preferences/com.apple.PowerManagement.plist

# Put hard disks to sleep when possible
sudo /usr/libexec/PlistBuddy -c "Set :'Battery Power':'Disk Sleep Timer' ${_battery_disk_sleep:-10}" /Library/Preferences/com.apple.PowerManagement.plist || \
  sudo /usr/libexec/PlistBuddy -c "Add :'Battery Power':'Disk Sleep Timer' integer ${_battery_disk_sleep:-10}" /Library/Preferences/com.apple.PowerManagement.plist

# Slight dim the display while on battery power
sudo /usr/libexec/PlistBuddy -c "Set :'Battery Power':ReduceBrightness ${_battery_reduce_brightness:-true}" /Library/Preferences/com.apple.PowerManagement.plist || \
  sudo /usr/libexec/PlistBuddy -c "Add :'Battery Power':ReduceBrightness bool ${_battery_reduce_brightness:-true}" /Library/Preferences/com.apple.PowerManagement.plist

# Enable Power Nap while on battery power
sudo /usr/libexec/PlistBuddy -c "Set :'Battery Power':DarkWakeBackgroundTasks ${_battery_power_nap:-false}" /Library/Preferences/com.apple.PowerManagement.plist || \
  sudo /usr/libexec/PlistBuddy -c "Add :'Battery Power':DarkWakeBackgroundTasks bool ${_battery_power_nap:-false}" /Library/Preferences/com.apple.PowerManagement.plist

# Power Adapter
# Turn display off after (n minutes)
sudo /usr/libexec/PlistBuddy -c "Set :'AC Power':'Display Sleep Timer' ${_adapter_display_sleep:-15}" /Library/Preferences/com.apple.PowerManagement.plist || \
  sudo /usr/libexec/PlistBuddy -c "Add :'AC Power':'Display Sleep Timer' integer ${_adapter_display_sleep:-15}" /Library/Preferences/com.apple.PowerManagement.plist

sudo /usr/libexec/PlistBuddy -c "Set :'AC Power':'System Sleep Timer' ${_adapter_system_sleep:-15}" /Library/Preferences/com.apple.PowerManagement.plist || \
  sudo /usr/libexec/PlistBuddy -c "Add :'AC Power':'System Sleep Timer' integer ${_adapter_system_sleep:-15}" /Library/Preferences/com.apple.PowerManagement.plist

# Put hard disks to sleep when possible
sudo /usr/libexec/PlistBuddy -c "Set :'AC Power':'Disk Sleep Timer' ${_adapter_disk_sleep:-10}" /Library/Preferences/com.apple.PowerManagement.plist || \
  sudo /usr/libexec/PlistBuddy -c "Add :'AC Power':'Disk Sleep Timer' integer ${_adapter_disk_sleep:-10}" /Library/Preferences/com.apple.PowerManagement.plist

# Wake for Wi-Fi/Ethernet network access
sudo /usr/libexec/PlistBuddy -c "Set :'AC Power':'Wake On LAN' ${_adapter_wake_on_lan:-true}" /Library/Preferences/com.apple.PowerManagement.plist || \
  sudo /usr/libexec/PlistBuddy -c "Add :'AC Power':'Wake On LAN' bool ${_adapter_wake_on_lan:-true}" /Library/Preferences/com.apple.PowerManagement.plist

# Enable Power Nap while plugged into a power adapter
sudo /usr/libexec/PlistBuddy -c "Set :'AC Power':DarkWakeBackgroundTasks ${_adapter_power_nap:-true}" /Library/Preferences/com.apple.PowerManagement.plist || \
  sudo /usr/libexec/PlistBuddy -c "Add :'AC Power':DarkWakeBackgroundTasks bool ${_adapter_power_nap:-true}" /Library/Preferences/com.apple.PowerManagement.plist

# Show battery status in menu bar (See: SystemPreferences/Misc.sh)

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
