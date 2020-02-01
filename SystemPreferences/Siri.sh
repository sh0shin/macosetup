#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Siri
[[ "${_siri_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Enable Ask Siri
defaults write com.apple.assistant.support "Assistant Enabled" -bool "${_siri_assistant_enabled:-false}"

# TODO
# Keyboard Shortcut
# Language
# Siri Voice
# Voice Feedback

# vim: set syn=bash sw=2 ts=2 et :
# eof
