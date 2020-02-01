#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Motd
[[ "${_motd_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

sudo touch /private/etc/motd
sudo chown root:admin /private/etc/motd
sudo chmod 0664 /private/etc/motd

cat "File.d/${_motd_file:-motd.in}" > /private/etc/motd

# vim: set syn=bash sw=2 ts=2 et :
# eof
