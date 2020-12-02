#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Wallet & Apple Pay
[[ "${_wallet_apple_pay_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# ...

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
