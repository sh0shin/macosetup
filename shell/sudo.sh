#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Sudo
[[ "${_sudo_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

sudo cp "file.d/${_sudo_file:-sudo.80admin.in}" "${_sudo_path:-/private/etc/sudoers.d}/${_sudo_dest:-80admin}"
sudo chmod 0440 "${_sudo_path:-/private/etc/sudoers.d}/${_sudo_dest:-80admin}"
