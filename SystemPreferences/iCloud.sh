#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# iCloud
[[ "${_icloud_enabled:-true}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Default Save Location
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool "${_icloud_new_docs_to_cloud:-false}"

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
