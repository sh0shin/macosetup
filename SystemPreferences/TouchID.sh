#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Touch ID
[[ "${_touch_id_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# ...

# vim: set syn=bash sw=2 ts=2 et :
# eof
