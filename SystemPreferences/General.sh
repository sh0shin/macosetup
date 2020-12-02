#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# General
[[ "${_general_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Appearance
case "${_general_appearance:-dark}" in
  # Dark
  Dark|dark)
    defaults write NSGlobalDomain AppleInterfaceStyle -string 'Dark'
  ;;
  # Light
  Light|light)
    defaults delete NSGlobalDomain AppleInterfaceStyle
  ;;
esac

# Accent colour
defaults write NSGlobalDomain AppleHighlightColor -string "${_general_accent_colour:-0.847059 0.847059 0.862745}"

# Highlight colour
defaults write NSGlobalDomain AppleAquaColorVariant -int ${_general_highlight_colour:-6}

# Sidebar icon size
# Small  : 1
# Medium : 2
# Large  : 3
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int ${_general_sidebar_icon_size:-1}

# Automatically hide and show the menu bar
defaults write NSGlobalDomain _HIHideMenuBar -bool ${_general_autohide_menu_bar:-false}

# Show scroll bars
# 'Automatic', 'WhenScrolling', 'Always'
defaults write NSGlobalDomain AppleShowScrollBars -string "${_general_show_scroll_bars:-WhenScrolling}"

# Click in the scroll bar to
#TODO

# Default web browser
#TODO

# Ask to keep changes when closing documents
#TODO

# Close windows when quitting an app
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool ${_general_close_quit:-false}

# Recent items Documents, Apps and Servers
#TODO

# Allow Handoff between this Mac and your iCloud devices
#TODO

# User font smoothing when available
#TODO

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
