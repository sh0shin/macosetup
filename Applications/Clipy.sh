#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Clipy
[[ "${_clipy_enabled:-true}" == false ]] && return
[[ -e "/Applications/Clipy.app" ]] || return
echo "${BASH_SOURCE[0]}"

defaults write com.clipy-app.Clipy SUEnableAutomaticChecks -bool "${_clipy_automatic_checks:-false}"
defaults write com.clipy-app.Clipy kCPYCollectCrashReport -bool "${_clipy_collect_crash_report:-false}"
defaults write com.clipy-app.Clipy kCPYPrefInputPasteCommandKey -bool "${_clipy_input_paste:-false}"
defaults write com.clipy-app.Clipy kCPYPrefMaxHistorySizeKey -int "${_clipy_max_history:-540}"
defaults write com.clipy-app.Clipy kCPYPrefShowStatusItemKey -int "${_clipy_show_status:-2}"
defaults write com.clipy-app.Clipy loginItem -bool "${_clipy_login_item:-true}"

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
