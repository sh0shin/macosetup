#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Finder
[[ "${_finder_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# General
# Show these items on the desktop
# Hard disks
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool "${_finder_desktop_show_hdd:-false}"
# External disks
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool "${_finder_desktop_show_external_hdd:-false}"
# CDs, DVDs and iPods
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool "${_finder_desktop_show_removal:-false}"
# Connected servers
defaults write com.apple.finder ShowMountedServersOnDesktop -bool "${_finder_desktop_show_servers:-true}"

# New Finder windows show
# Computer     : 'PfCm'
# Volume       : 'PfVo'
# $HOME        : 'PfHm'
# Desktop      : 'PfDe'
# Documents    : 'PfDo'
# iCloud Drive : 'PfID'
# Other...     : 'PfLo'
defaults write com.apple.finder NewWindowTarget -string "${_finder_new_window_target:-PfHm}"
#defaults write com.apple.finder NewWindowTargetPath -string "file://{PATH}"
defaults delete com.apple.finder NewWindowTargetPath 2>/dev/null

# Tags
#TODO

# Sidebar
# Show these items in the sidebar
#TODO

# Advanced
# Show all files
defaults write com.apple.finder AppleShowAllFiles -bool "${_finder_show_all_files:-true}"

# Show warning before changing an extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool "${_finder_extension_change_warning:-false}"

# Show warning before removing from iCloud Drive
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool "${_finder_remove_from_icloud_warning:-true}"

# Show warning before emtying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool "${_finder_warn_on_empty_trash:-false}"

# Remove items from the Trash after 30 days
defaults write com.apple.finder FXRemoveOldTrashItems -bool "${_finder_remove_old_trash:-false}"

# Keep folders on top
# In windows when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool "${_finder_sort_folders_first:-true}"

# On Desktop
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool "${_finder_sort_folders_first:-true}"

# When performing a search
# Search This Mac               : `SCev`
# Search the Current Folder     : `SCcf`
# Use the Previous Search Scope : `SCsp`
defaults write com.apple.finder FXDefaultSearchScope -string "${_finder_default_search:-SCcf}"

# View Options
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:GroupBy ${_finder_desktop_view_group_by:-None}" ~/Library/Preferences/com.apple.finder.plist || \
  /usr/libexec/PlistBuddy -c "Add :DesktopViewSettings:GroupBy string ${_finder_desktop_view_group_by:-None}" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy ${_finder_desktop_view_arrange_by:-grid}" ~/Library/Preferences/com.apple.finder.plist || \
  /usr/libexec/PlistBuddy -c "Add :DesktopViewSettings:IconViewSettings:arrangeBy string ${_finder_desktop_view_arrange_by:-grid}" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing ${_finder_desktop_view_grid_spacing:-21}" ~/Library/Preferences/com.apple.finder.plist || \
  /usr/libexec/PlistBuddy -c "Add :DesktopViewSettings:IconViewSettings:gridSpacing integer ${_finder_desktop_view_grid_spacing:-21}" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize ${_finder_desktop_view_icon_size:-48}" ~/Library/Preferences/com.apple.finder.plist || \
  /usr/libexec/PlistBuddy -c "Add :DesktopViewSettings:IconViewSettings:iconSize integer ${_finder_desktop_view_icon_size:-48}" ~/Library/Preferences/com.apple.finder.plist

# View Style
# Icons:    icnv
# List:     Nlsv
# Columns:  clmv
# Gallery:  glyv
defaults write com.apple.finder FXPreferredViewStyle -string "${_finder_view_style:-Nlsv}"

# Other

# Show All File Extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool "${_finder_show_all_extensions:-true}"

# Show POSIX path in title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool "${_finder_posix_path_in_title:-true}"

# Disable .DS_Store on Network and USB
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool "${_finder_disable_ds_network:-true}"
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool "${_finder_disable_ds_usb:-true}"

# Restart
killall Finder

# vim: set syn=bash sw=2 ts=2 et :
# eof
