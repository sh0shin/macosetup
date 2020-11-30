#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Brew Cask
[[ ${_brew_cask_enabled:-true} == false ]] && return
[[ ${_brew_enabled:-true} == false ]] && return
[[ ${_xcode_enabled:-true} == false ]] && return
echo "${BASH_SOURCE[0]}"

# Tapping homebrew/cask
brew tap homebrew/cask

# Tapping cask taps
for _tap in "${_brew_cask_taps[@]:-()}"
do
  brew tap "$_tap"
done

# Install Casks
if [[ -n "${_brew_casks[*]:-()}" ]]
then

  for _cask in "${_brew_casks[@]}"
  do
    brew cask info "$_cask" | grep -qi "not installed" && \
      brew cask install "$_cask"
  done

  if [[ ${_brew_cask_upgrade_greedy:-false} == true ]]
  then
    brew cask upgrade --greedy
  elif [[ ${_brew_cask_upgrade:-true} == true ]]
  then
    brew cask upgrade
  fi
fi

# Cleanup
[[ ${_brew_cleanup:-false} == true ]] && brew cleanup --prune="${_brew_cleanup_prune:-0}"

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
