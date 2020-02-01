#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Cursorcerer
[[ "${_cursorcerer_enabled:-true}" == false ]] && return
[[ -x "$HOME/Library/PreferencePanes/Cursorcerer.prefPane" ]] || return
echo "${BASH_SOURCE[0]}"

defaults write com.doomlaser.cursorcerer autoShow -bool "${_cursorcerer_auto_show:-true}"
defaults write com.doomlaser.cursorcerer idleHide -int "${_cursorcerer_idle_hide:-10}"

# vim: set syn=bash sw=2 ts=2 et :
# eof
