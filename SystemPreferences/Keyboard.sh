#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Keyboard
[[ "${_keyboard_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Key Repeat Rate
defaults write NSGlobalDomain KeyRepeat -int "${_keyboard_repeat:-2}"

# Key Repeat (Fast) / Delay Until Repeat (Short)
defaults write NSGlobalDomain InitialKeyRepeat -int "${_keyboard_inital_repeat:-15}"

# Adjust keyboard brightness in low light
#TODO

# Turn keyboard backlight off after n of inactivity
#TODO

# Show keyboard and emoji viewers in menu bar
#TODO

# Use F1, F2, etc. keys as standard function keys
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool "${_keyboard_fn_state:-true}"

# Text
# Correct spelling automatically
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool "${_keyboard_auto_spelling:-false}"
defaults write NSGlobalDomain WebAutomaticSpellingCorrectionEnabled -bool "${_keyboard_auto_spelling:-false}"

# Capitalise words automatically
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool "${_keyboard_auto_capitalise:-false}"

# Add full stop with double-space
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool "${_keyboard_space_fullstop:-false}"

# Spelling
#TODO

# Use smart quotes and dashes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool "${_keyboard_smart_quote:-false}"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool "${_keyboard_smart_dash:-false}"

# Shortcuts
#TODO

# Input Sources
# Show input menu in menu bar
defaults write com.apple.TextInputMenu visible -bool "${_keyboard_input_menu:-false}"

# Dictation
#TODO

# Other

# Full Keyboard Access
# 1 : Text boxes and lists only
# 3 : All controls
defaults write NSGlobalDomain AppleKeyboardUIMode -int "${_keyboard_ui_mode:-3}"
