#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Bluetooth
[[ "${_bluetooth_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Turn Bluetooth On/Off
#sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0
#sudo killall -HUP bluetoothd

# Show Bluetooth in menu bar (See: SystemPreferences/Misc.sh)

# Advanced
# Open Bluetooth Setup Assistant at startup if no keyboard is detected
defaults write com.apple.systempreferences BluetoothAutoSeekKeyboard -bool "${_bluetooth_auto_seek:-false}"

# Open Bluetooth Setup Assistant at startup if no mouse or trackpad is detected
defaults write com.apple.systempreferences BluetoothAutoSeekPointingDevice -bool "${_bluetooth_auto_seek:-false}"

# Allow Bluetooth devices to wake this computer
#TODO

# vim: set syn=bash sw=2 ts=2 et :
# eof
