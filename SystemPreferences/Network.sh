#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Network
[[ "${_network_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# TODO

# vim: set syn=bash sw=2 ts=2 et :
# eof
