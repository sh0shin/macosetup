#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Accessibility
[[ "${_accessibility_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# TODO (com.apple.universalaccess)

# vim: set syn=bash sw=2 ts=2 et :
# eof