#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Desktop & Screen Saver
[[ "${_desktop_screensaver_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Desktop
# TODO

# Screen Saver
# Start after
defaults -currentHost write com.apple.screensaver idleTime -int "${_screensaver_idletime:-1200}"

# Show with clock
defaults -currentHost write com.apple.screensaver showClock -bool "${_screensaver_showclock:-false}"
