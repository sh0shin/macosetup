#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Contacts
[[ "${_contacts_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# General
# Show First Name
# false : Before last name
# true  : Following last name
defaults write com.apple.AddressBook ABNameDisplay -bool false

# Sort By
# Last Name
defaults write com.apple.AddressBook ABNameSortingFormat -string 'sortingLastName sortingFirstName'
# First Name
#defaults write com.apple.AddressBook ABNameSortingFormat -string 'sortingFirstName sortingLastName'

# Short Name Format
# Short name format
# 0: Full Name
# 1: First Name & Last Initial
# 2: First Initial & Last Name
# 3: First Name Only
# 4: Last Name Only
defaults write com.apple.AddressBook ABShortNameStyle -int 2

# Prefer nicknames
# Show contacts Siri found in apps

# Address Format
defaults write com.apple.AddressBook ABDefaultAddressCountryCode -string 'de'

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
