#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Brew
[[ ${_brew_enabled:-true} == false ]] && return
[[ ${_xcode_enabled:-true} == false ]] && return
echo "${BASH_SOURCE[0]}"

# Install Homebrew (TODO: UPDATE TO BASH VERSION!)
if [[ ! -x /usr/local/bin/brew ]]
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Analytics
brew analytics ${_brew_analytics:-off}

# Install Formulae
if [[ -n "${_brew_formulae[@]}" ]]
then

  brew update

  for _formulae in "${_brew_formulae[@]}"
  do
    brew info "$_formulae" | grep -qi "not installed" && \
      brew install "$_formulae"
  done

  [[ ${_brew_upgrade:-true} == true ]] && brew upgrade
fi

# Cleanup
[[ ${_brew_cleanup:-false} == true ]] && brew cleanup --prune=${_brew_cleanup_prune:-0}

# vim: set syn=bash sw=2 ts=2 et :
# eof
