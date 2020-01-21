#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Cask
[[ ${_cask_enabled:-true} == false ]] && return
[[ ${_brew_enabled:-true} == false ]] && return
[[ ${_xcode_enabled:-true} == false ]] && return
echo "${BASH_SOURCE[0]}"

# Tapping homebrew/cask
brew tap homebrew/cask

# Tapping homebrew/cask-drivers
brew tap homebrew/cask-drivers

# Install Casks
if [[ -n "${_brew_casks[@]}" ]]
then

  for _cask in "${_brew_casks[@]}"
  do
    brew cask info "$_cask" | grep -qi "not installed" && \
      brew cask install "$_cask"
  done

  [[ ${_brew_upgrade:-true} == true ]] && brew cask upgrade
fi

# Cleanup
[[ ${_brew_cleanup:-false} == true ]] && brew cleanup --prune=${_brew_cleanup_prune:-0}

# vim: set syn=bash sw=2 ts=2 et :
# eof
