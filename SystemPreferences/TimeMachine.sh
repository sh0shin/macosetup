#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Time Machine
[[ "${_timemachine_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Back Up Automatically
sudo defaults write /Library/Preferences/com.apple.TimeMachine AutoBackup -bool "${_timemachine_autobackup:-false}"

# Skip System Files
sudo defaults write /Library/Preferences/com.apple.TimeMachine SkipSystemFiles -bool "${_timemachine_skipsystemfiles:-true}"

# Skip Paths
# Defaults: /System/Library/CoreServices/backupd.bundle/Contents/Resources/StdExclusions.plist
sudo defaults write /Library/Preferences/com.apple.TimeMachine SkipPaths -array "${_timemachine_skip_paths[@]:-()}"

# Exclusions (Console only)
if [[ -n "${_timemachine_exclusions[*]:-()}" ]]
then
  for _exclusion in "${_timemachine_exclusions[@]}"
  do
    [[ -e "$_exclusion" ]] && tmutil addexclusion "$_exclusion"
  done
fi

# Exclusions in $HOME (Console only)
if [[ -n "${_timemachine_exclusions_home[*]:-()}" ]]
then
  for _exclusion in "${_timemachine_exclusions_home[@]}"
  do
    [[ -e "$HOME/$_exclusion" ]] && tmutil addexclusion "$HOME/$_exclusion"
  done
fi

# Back up while on battery power
sudo defaults write /Library/Preferences/com.apple.TimeMachine RequiresACPower -bool "${_timemachine_require_acpower:-true}"

# Notify after old backups are deleted
sudo defaults write /Library/Preferences/com.apple.TimeMachine AlwaysShowDeletedBackupsWarning -bool "${_timemachine_notify_deleted:-true}"

# Other/Hidden
# MaxSize
#sudo defaults write /Library/Preferences/com.apple.TimeMachine MaxSize -integer "${_timemachine_maxsize:-262144}"

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
