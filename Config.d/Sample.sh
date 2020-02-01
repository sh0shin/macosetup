#!/usr/bin/env bash
#

# Config
echo "${BASH_SOURCE[0]}"

## Shell
#_motd_enabled=true
#_motd_file="motd.in"

# Sudo
#_sudo_enabled=true
#_sudo_file="sudo.80admin.in"
#_sudo_path="/private/etc/sudoers.d"
#_sudo_dest="80admin"

# Sysctl
#_sysctl_enabled=false
#_sysctl_flags=()

# Xcode
#_xcode_enabled=true

## Homebrew (Depends on Xcode!)
#_brew_enabled=true
#_cask_enabled=true
#_brew_formulae=()
#_brew_casks=()
#_brew_cleanup=false
#_brew_cleanup_prune=0

## SystemPreferences
#_sysprefs_enabled=true

# Hidden
# Accessibility:          com.apple.preference.universalaccess
# Bluetooth:              com.apple.preferences.Bluetooth
# Date & Time:            com.apple.preference.datetime
# Desktop & Screen Saver: com.apple.preference.desktopscreeneffect
# Displays:               com.apple.preference.displays
# Dock:                   com.apple.preference.dock
# Energy Saver:           com.apple.preference.energysaver
# Extensions:             com.apple.preferences.extensions
# General:                com.apple.preference.general
# Internet Accounts:      com.apple.preferences.internetaccounts
# Keyboard:               com.apple.preference.keyboard
# Language & Region:      com.apple.Localization
# Mission Control:        com.apple.preference.expose
# Mouse:                  com.apple.preference.mouse
# Network:                com.apple.preference.network
# Notifications:          com.apple.preference.notifications
# Parental Controls:      com.apple.preferences.parentalcontrols
# Printers & Scanners:    com.apple.preference.printfax
# Security & Privacy:     com.apple.preference.security
# Sharing:                com.apple.preferences.sharing
# Siri:                   com.apple.preference.speech
# Software Update:        com.apple.preferences.softwareupdate
# Sound:                  com.apple.preference.sound
# Spotlight:              com.apple.preference.spotlight
# Startup Disk:           com.apple.preference.startupdisk
# Time Machine:           com.apple.prefs.backup
# Trackpad:               com.apple.preference.trackpad
# Users & Groups:         com.apple.preferences.users
# iCloud:                 com.apple.preferences.icloud
#_sysprefs_hidden=()

# General
#_general_enabled=true
#_general_appearance="dark"
#_general_accent_colour="0.847059 0.847059 0.862745"
#_general_highlight_colour=6
#_general_sidebar_icon_size=1
#_general_autohide_menu_bar=false
#_general_show_scroll_bars="WhenScrolling"
#_general_close_quit=false

# Desktop & Screen Saver
#_desktop_screensaver_enabled=true
#_screensaver_idletime=1200
#_screensaver_showclock=false

# Dock
#_dock_enabled=true
#_dock_size=48
#_dock_magnification=false
#_dock_magnification_size=64
#_dock_position="bottom"
#_dock_minimise_effect="genie"
#_dock_double_click_window_title="Maximize"
#_dock_minimize_window_into_app=true
#_dock_animate_open=false
#_dock_autohide=false
#_dock_show_indicators_open=true
#_dock_show_recent_app=false

# Mission Control
#_missioncontrol_enabled=true
#_missioncontrol_auto_rearrange_spaces=false
#_missioncontrol_switch_to_space=true
#_missioncontrol_group_by_app=true
#_missioncontrol_displays_have_spaces=false
# Hot Corners
#  0 : None
#  2 : Mission Control
#  3 : Application Windows
#  4 : Desktop
#  5 : Start Screen Saver
#  6 : Disable Screen Saver
#  7 : Dashboard
# 10 : Put Display to sleep
# 11 : Launchpad
# 12 : Notification Center
# Top Left
#_missioncontrol_hc_tl=2
#_missioncontrol_hc_tl_mod=0
# Top Right
#_missioncontrol_hc_tr=0
#_missioncontrol_hc_tr_mod=0
# Bottom Left
#_missioncontrol_hc_bl=3
#_missioncontrol_hc_bl_mod=0
# Bottom Right
#_missioncontrol_hc_br=10
#_missioncontrol_hc_br_mod=0

# Language & Region

# Security & Privacy
#_security_privacy_enabled=true
#_lock_message="macOSetup"
#_filevault_enabled=true
#_firewall_state=off
#_firewall_blockall=off
#_firewall_signed=off
#_firewall_signedapp=off
#_firewall_stealthmode=off

# Spotlight
# Notifications

# Displays
# Energy Saver
# Keyboard
# Mouse
# Trackpad
# Printers & Scanners
# Sound
# Startup Disk

# iCloud
#_icloud_enabled=true
#_icloud_new_docs_to_cloud=false

# Internet Accounts

# Software Update
#_software_update_enabled=true
#_software_update_auto_check=true
#_software_update_auto_download=false
#_software_update_autoinstall_macos=false
#_software_update_autoinstall_data_security=true

# Network
# Bluetooth
# Extensions

# Sharing
#_sharing_enabled=true
#_sharing_computername="macOSetup"
#_sharing_remotelogin=off

# Users & Groups
# Parental Controls

# Siri
#_siri_enabled=true
#_siri_assistant_enabled=false

# Date & Time
#_date_time_enabled=true
#_date_time_usingnetworktime=on
#_date_time_networktimeserver="de.pool.ntp.org"
#_date_time_timezone="Europe/Berlin"
#_date_time_dateformat="EEE d. MMM  HH:mm:ss"

# Time Machine
#_timemachine_enabled=true
#_timemachine_autobackup=false
#_timemachine_skipsystemfiles=true
#_timemachine_skip_paths=()
#_timemachine_require_acpower=true
#_timemachine_notify_deleted=true
##_timemachine_maxsize=262144

# Accessibility

## Applications

## Misc
# Dock Icons (Depends on dockutil!)
#_dock_icons_enabled=false
#_dock_icons_apps=()
#_dock_icons_others=()

# PyEnv
#_pyenv_enabled=false
#_pyenv_root="$HOME/.pyenv"
#_pyenv_git="https://github.com/pyenv/pyenv.git"
#_pyenv_venv_enabled=false
#_pyenv_venv_git="https://github.com/pyenv/pyenv-virtualenv.git"
#_pyenv_versions=()

# vim: set syn=bash sw=2 ts=2 et :
# eof
