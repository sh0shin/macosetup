#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Sysctl
[[ "${_sysctl_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Config
IFS=$'\n'
echo "echo \"${_sysctl_flags[*]:-()}\" >/private/etc/sysctl.conf" | sudo -s
unset IFS

# Set
for _flag in "${_sysctl_flags[@]}"
do
  sudo sysctl "$_flag"
done

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
