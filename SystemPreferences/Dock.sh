#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Dock
[[ "${_dock_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Size
defaults write com.apple.dock tilesize -int "${_dock_size:-48}"

# Magnification
defaults write com.apple.dock magnification -bool "${_dock_magnification:-false}"
defaults write com.apple.dock largesize -int "${_dock_magnification_size:-64}"

# Position on screen
# 'left', 'bottom', 'right'
defaults write com.apple.dock orientation -string "${_dock_position:-bottom}"

# Minimise windows using
# 'genie', 'scale'
defaults write com.apple.dock mineffect -string "${_dock_minimise_effect:-genie}"

# Prefer tabs when opening documents
#TODO

# Double-click a window's title bar to
# 'None', 'Mimimize', 'Maximize' (zoom)
defaults write NSGlobalDomain AppleActionOnDoubleClick -string "${_dock_double_click_window_title:-Maximize}"

# Minimise windows into application icon
defaults write com.apple.dock minimize-to-application -bool "${_dock_minimize_window_into_app:-true}"

# Animate opening applications
defaults write com.apple.dock launchanim -bool "${_dock_animate_open:-false}"

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool "${_dock_autohide:-false}"
defaults write com.apple.dock autohide-delay -float 0

# Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool "${_dock_show_indicators_open:-true}"

# Show recent applications in Dock
defaults write com.apple.dock show-recents -bool "${_dock_show_recent_app:-false}"

# Restart
killall Dock

# vim: set syn=bash sw=2 ts=2 et :
# eof
