#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# System Preferences
[[ "${_sysprefs_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Hidden
defaults write com.apple.systempreferences HiddenPreferencePanes -array "${_sysprefs_hidden[@]:-()}"

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
