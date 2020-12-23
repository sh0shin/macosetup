#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Touch ID
[[ "${_touch_id_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Use Touch ID for:

# Unlocking your MAC
#???
# Apple Pay
#???

# iTunes Store, App Store & Apple Books
#defaults write com.apple.AppleMediaServices AMSDeviceBiometricsState -int 2
#defaults write com.apple.AppleMediaServices AMSDeviceBiometricsState -int 1

# Password AutoFill
#defaults write com.apple.Safari TouchIDToAutoFill -bool false
#defaults write com.apple.Safari TouchIDToAutoFill -bool true
