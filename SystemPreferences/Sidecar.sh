#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Sidecar
[[ "${_sidecar_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Show Sidebar
#defaults write com.apple.sidecar.display sidebarShown -bool false
#defaults write com.apple.sidecar.display sidebarShown -bool true

#on the left
#defaults write com.apple.sidecar.display sidebarRight -bool false
#on the right
#defaults write com.apple.sidecar.display sidebarRight -bool true

# Show Touch Bar
#defaults write com.apple.sidecar.display showTouchbar -bool false
#defaults write com.apple.sidecar.display showTouchbar -bool true

# on the top
#defaults write com.apple.sidecar.display touchBarTop -bool true
# on the bottom
#defaults write com.apple.sidecar.display touchBarTop -bool false

# Enable double tap on Apple Pencil
#defaults write com.apple.sidecar.display doubleTapEnabled -bool true
#defaults write com.apple.sidecar.display doubleTapEnabled -bool false
