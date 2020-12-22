#!/usr/bin/env bash
#

# Config
echo "${BASH_SOURCE[0]}"

## Shell
# Motd
#_motd_enabled=true
#_motd_file="motd.in"

# Shells
#_homebrew_shells=false
#_homebrew_bash=false
#_homebrew_zsh=false

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
#_brew_analytics=off
#_brew_taps=()
#_brew_cask_enabled=true
#_brew_formulae=(
  #bash
  #bash-completion
#)
#_brew_casks=(
  #atom
  #google-chrome
#)
#_brew_cask_taps=(
  #homebrew/cask-drivers
  #homebrew/cask-fonts
#)
#_brew_upgrade=true
#_brew_cask_upgrade=true
#_brew_cask_upgrade_greedy=false
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
#_spotlight_enabled=true
##_spotlight_search_items=()
#_spotlight_suggestions_disabled=true
#_spotlight_exclusions=()

# Notifications
#_notifications_enabled=true
#_notifications_sort_order=1

# Displays

# Energy Saver
#_energy_saver_enabled=true
#_battery_display_sleep=5
#_battery_system_sleep=5
#_battery_disk_sleep=10
#_battery_reduce_brightness=true
#_battery_power_nap=false
#_adapter_display_sleep=15
#_adapter_system_sleep=15
#_adapter_disk_sleep=10
#_adapter_wake_on_lan=true
#_adapter_power_nap=true

# Keyboard
#_keyboard_enabled=true
#_keyboard_repeat=2
#_keyboard_inital_repeat=15
#_keyboard_fn_state=true
#_keyboard_auto_spelling=false
#_keyboard_auto_spelling=false
#_keyboard_auto_capitalise=false
#_keyboard_space_fullstop=false
#_keyboard_smart_quote=false
#_keyboard_smart_dash=false
#_keyboard_input_menu=false
#_keyboard_ui_mode=3

# Mouse
# Trackpad
# Printers & Scanners

# Sound
#_sound_enabled=true
#_sound_effects="/System/Library/Sounds/Basso.aiff"
#_sound_play_effects=true
#_sound_change_feedback=false

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
#_software_update_list=false
#_software_update_install_all=false
#_software_update_install_recommended=false

# Network

# Bluetooth
#_bluetooth_enabled=true
#_bluetooth_auto_seek=false

# Extensions

# Sharing
#_sharing_enabled=true
#_sharing_computername="macOSetup"
#_sharing_remove_public_folder=false
#_sharing_remotelogin=off

# Users & Groups
#_users_groups_enabled=true
#_users_groups_autologin_user=
#_users_groups_guest_enabled=false
#_users_groups_show_fullname=true
#_users_groups_poweroff_disabled=true
#_users_groups_inputmenu=false
#_users_groups_password_hint=0
#_users_groups_switching_menu=1

# Parental Controls

# Siri
#_siri_enabled=true
#_siri_assistant_enabled=false
#_siri_dictation_enabled=false
#_siri_data_sharing_status=0

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
#_timemachine_exclusions=()
#_timemachine_exclusions_home=()
#_timemachine_require_acpower=true
#_timemachine_notify_deleted=true
##_timemachine_maxsize=262144

# Accessibility

# Misc
#_misc_enabled=false
#_misc_allow_unknown_servers=true
#_misc_admin_host_info="HostName"
#_misc_disable_fde_auto_login=false
#_misc_logout_saves_state=false
#_misc_nohidden_library=false
#_misc_nohidden_volumes=false
#_misc_root_volume_rename=false
#_misc_root_volume_name=macOSystem
#_misc_show_battery_percentage=NO
#...

## Applications

# Activity Monitor
#_activity_monitor_enabled=true
#_activity_monitor_icon=5
#_activity_monitor_disk_graph=1
#_activity_monitor_network_graph=1

# Contacts
#_contacts_enabled=false

# Finder
#_finder_enabled=true
#_finder_desktop_show_hdd=false
#_finder_desktop_show_external_hdd=false
#_finder_desktop_show_removal=false
#_finder_desktop_show_servers=true
#_finder_new_window_target="PfHm"
#_finder_show_all_files=true
#_finder_extension_change_warning=false
#_finder_remove_from_icloud_warning=true
#_finder_warn_on_empty_trash=false
#_finder_remove_old_trash=false
#_finder_sort_folders_first=true
#_finder_default_search="SCcf"
#_finder_desktop_view_group_by="None"
#_finder_desktop_view_arrange_by="grid"
#_finder_desktop_view_grid_spacing=21
#_finder_desktop_view_icon_size=48
#_finder_view_style="Nlsv"
#_finder_show_all_extensions=true
#_finder_posix_path_in_title=true
#_finder_disable_ds_network=true
#_finder_disable_ds_usb=true

# Disk Utility
#_disk_utility_enabled=true
#_disk_utility_show_all=true

# Mail
#_mail_enabled=false

# Screenshot
#_screenshot_enabled=true
#_screenshot_disable_shadow=true
#_screenshot_location="$HOME/Pictures/Screenshots"
#_screenshot_type="png"

# Atom
#_atom_enabled=false
#_atom_packages=(
  #...
#)

# Clipy
#_clipy_enabled=true
#_clipy_automatic_checks=false
#_clipy_collect_crash_report=false
#_clipy_input_paste=false
#_clipy_max_history=540
#_clipy_show_status=2
#_clipy_login_item=true

# iTerm2
#_iterm_enabled=true
#_iterm_prefs_custom=false
#_iterm_prefs_custom_folder="~/.iterm2"

## Misc
# Dock Icons (Depends on dockutil!)
#_dock_icons_enabled=false
#_dock_icons_apps=()
#_dock_icons_others=()

# PyEnv
#_pyenv_enabled=false
#_pyenv_root="$HOME/.pyenv"
#_pyenv_git_enabled=false
#_pyenv_git_url="https://github.com/pyenv/pyenv.git"
#_pyenv_venv_enabled=false
#_pyenv_venv_git_enabled=false
#_pyenv_venv_git_url="https://github.com/pyenv/pyenv-virtualenv.git"
#_pyenv_versions=()

# RbEnv
#_rbenv_enabled=false
#_rbenv_root="$HOME/.rbenv"
#_rbenv_git_enabled=false
#_rbenv_git_url="https://github.com/rbenv/rbenv.git"
#_rbenv_build_enabled=true
#_rbenv_build_git_enabled=false
#_rbenv_build_git_url="https://github.com/rbenv/ruby-build.git"
#_rbenv_versions=()

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
