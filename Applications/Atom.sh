#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Atom
[[ "${_atom_enabled:-false}" == false ]] && return
[[ -x "/usr/local/bin/apm" ]] || return
echo "${BASH_SOURCE[0]}"

# apm install...
for _pkg in "${_atom_packages[@]:-()}"
do
  apm install "$_pkg"
done

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
