#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Sysctl
[[ "${_sysctl_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Defaults
IFS=$'\n'
echo "echo \"${_sysctl[*]}\" >/private/etc/sysctl.conf" | sudo -s

# vim: set syn=sh sw=2 ts=2 et :
# eof
