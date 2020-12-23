#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Spotlight
[[ "${_spotlight_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Search Results
# TODO ${_spotlight_search_items[@]}
defaults write com.apple.Spotlight orderedItems -array \
  '{ enabled = 1; name = "APPLICATIONS"; }' \
  '{ enabled = 0; name = "BOOKMARKS"; }' \
  '{ enabled = 0; name = "MENU_EXPRESSION"; }' \
  '{ enabled = 0; name = "CONTACT"; }' \
  '{ enabled = 0; name = "MENU_CONVERSION"; }' \
  '{ enabled = 0; name = "MENU_DEFINITION"; }' \
  '{ enabled = 0; name = "DOCUMENTS"; }' \
  '{ enabled = 0; name = "EVENT_TODO"; }' \
  '{ enabled = 0; name = "MOVIES"; }' \
  '{ enabled = 0; name = "DIRECTORIES"; }' \
  '{ enabled = 0; name = "FONTS"; }' \
  '{ enabled = 0; name = "IMAGES"; }' \
  '{ enabled = 0; name = "MESSAGES"; }' \
  '{ enabled = 0; name = "MUSIC"; }' \
  '{ enabled = 0; name = "MENU_OTHER"; }' \
  '{ enabled = 0; name = "PDF"; }' \
  '{ enabled = 0; name = "PRESENTATIONS"; }' \
  '{ enabled = 0; name = "MENU_SPOTLIGHT_SUGGESTIONS"; }' \
  '{ enabled = 0; name = "SPREADSHEETS"; }' \
  '{ enabled = 1; name = "SYSTEM_PREFS"; }'

# Allow Spotlight Suggestions in Look up (disabled)
defaults write com.apple.lookup.shared LookupSuggestionsDisabled -bool "${_spotlight_suggestions_disabled:-true}"

# Privacy
# Prevent Spotlight from searching these locations
# TODO: Check due to failure "defaults[12449:28233] Could not write domain /.Spotlight-V100/VolumeConfiguration; exiting"
# sudo defaults write /.Spotlight-V100/VolumeConfiguration Exclusions -array "${_spotlight_exclusions[@]}"

# Restart
sudo killall mds &>/dev/null
sleep 5

# Re-Index
sudo mdutil -i on / >/dev/null
sudo mdutil -E / >/dev/null
