#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Internet Accounts
[[ "${_internet_accounts_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# TODO

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
