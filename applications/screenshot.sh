#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Screenshot
[[ "${_screenshot_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

[[ -d "${_screenshot_location:-$HOME/Pictures/Screenshots}" ]] || mkdir -p "${_screenshot_location:-$HOME/Pictures/Screenshots}"

defaults write com.apple.screencapture disable-shadow -bool "${_screenshot_disable_shadow:-true}"
defaults write com.apple.screencapture location -string "${_screenshot_location:-$HOME/Pictures/Screenshots}"
defaults write com.apple.screencapture type -string "${_screenshot_type:-png}"
