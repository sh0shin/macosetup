#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Notifications
[[ "${_notifications_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Notification Centre sort order:
# Recents         - 0
# Recents by App  - 1
# Manually by App - 2
defaults write com.apple.ncprefs sort_order -int "${_notifications_sort_order:-1}"

# vim: set syn=bash sw=2 ts=2 et :
# eof
