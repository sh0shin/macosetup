#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Mission Control
[[ "${_missioncontrol_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool "${_missioncontrol_auto_rearrange_spaces:-false}"

# When switching to an application, switch to a Space with open windows for the application
defaults write NSGlobalDomain AppleSpacesSwitchOnActivate -bool "${_missioncontrol_switch_to_space:-true}"

# Group windows by application
defaults write com.apple.dock expose-group-by-app -bool "${_missioncontrol_group_by_app:-true}"

# Displays have separate Spaces
defaults write com.apple.spaces spans-displays -bool "${_missioncontrol_displays_have_spaces:-false}"

# Dashboard
# TODO
#defaults write com.apple.dashboard mcx-disabled -bool true

# Keyboard and Mouse Shortcuts
#TODO

# Hot Corners
#  0 : NOP
#  2 : Mission Control
#  3 : Application Windows
#  4 : Desktop
#  5 : Start Screen Saver
#  6 : Disable Screen Saver
#  7 : Dashboard
# 10 : Put Display to sleep
# 11 : Launchpad
# 12 : Notification Center
##
# Top left
defaults write com.apple.dock wvous-tl-corner   -int "${_missioncontrol_hc_tl:-2}"
defaults write com.apple.dock wvous-tl-modifier -int "${_missioncontrol_hc_tl_mod:-0}"
# Top right
defaults write com.apple.dock wvous-tr-corner   -int "${_missioncontrol_hc_tr:-0}"
defaults write com.apple.dock wvous-tr-modifier -int "${_missioncontrol_hc_tr_mod:-0}"
# Bottom left
defaults write com.apple.dock wvous-bl-corner   -int "${_missioncontrol_hc_bl:-3}"
defaults write com.apple.dock wvous-bl-modifier -int "${_missioncontrol_hc_bl_mod:-0}"
# Bottom right
defaults write com.apple.dock wvous-br-corner   -int "${_missioncontrol_hc_br:-10}"
defaults write com.apple.dock wvous-br-modifier -int "${_missioncontrol_hc_br_mod:-0}"
