#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Xcode
[[ "${_xcode_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Install Xcode Command Line Tools
if ! $(xcode-select -p &>/dev/null)
then
  xcode-select --install 2>/dev/null

  # Wait for installation to finish
  until $(xcode-select -p &>/dev/null)
  do
    sleep 5
  done
fi

# vim: set syn=bash sw=2 ts=2 et :
# eof
