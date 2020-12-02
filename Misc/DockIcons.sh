#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Dock Icons (Requires: dockutil)
[[ "${_dock_icons_enabled:-false}" == false ]] && return
[[ -x "/usr/local/bin/dockutil" ]] || return
echo "${BASH_SOURCE[0]}"

# Clear all Icons
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-others -array

# Apps
for _app in "${_dock_icons_apps[@]:-()}"
do
  if [ -e "$_app" ]
  then
    /usr/local/bin/dockutil --no-restart --section apps --add "$_app"
  fi
done

# Others
# Downloads
/usr/local/bin/dockutil --no-restart --section others --add ~/Downloads --view list --display folder

for _other in "${_dock_icons_others[@]:-()}"
do
  if [ -e "$_other" ]
  then
    /usr/local/bin/dockutil --no-restart --section others --add "$_other"
  fi
done

# Restart
killall Dock

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
