#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Sound
[[ "${_sound_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Sound Effects (/System/Library/Sounds/)
defaults write NSGlobalDomain com.apple.sound.beep.sound -string "${_sound_effects:-/System/Library/Sounds/Basso.aiff}"

# Play user interface sound effects
defaults write NSGlobalDomain com.apple.sound.uiaudio.enabled -bool "${_sound_play_effects:-true}"

# Play feedback when volume is changed
defaults write NSGlobalDomain com.apple.sound.beep.feedback -bool "${_sound_change_feedback:-false}"

# Output
# Input

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
