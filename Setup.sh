#!/usr/bin/env bash
#

# macOSetup
#

# Variables
export _user="$(whoami)"
export _fullname="$(finger ${_user} | awk '/Name:/ { print $4 }')"

# Functions
_usage()
{
  echo "Usage: $0 <config-file> [run-script(s)]"
  exit 1
}

_osupport()
{
  if [[ $OSTYPE != darwin* ]]
  then
    echo "Only Darwin/macOS is supported!"
    exit 1
  fi
}

_sipstatus()
{
  _sip_status=$(csrutil status | awk -F'status: ' '{print $2}')
  if [[ "$_sip_status" = 'enabled' ]]
  then
    echo 'WARNING: System Integrity Protection is enabled!'
    echo 'WARNING: Some settings may fail!'
    read -p 'Press RETURN to continue.' _wait
  fi
}

_main()
{
  _osupport
  _sipstatus

  _config="$1"

  if [[ -e "$_config" ]]
  then
    source "$_config"
    _local="$(basename "$_config")"
    shift
  else
    echo "$_config not found!"
    exit 1
  fi

  # Run selected only
  if [[ $# -gt 0 ]]
  then
    for _run in "$@"
    do
      test -x "$_run" && source "$_run"
    done
    exit 0
  fi

  # Run all
  for _run in Shell/*.sh Homebrew/*.sh SystemPreferences/*.sh Applications/*.sh Misc/*.sh
  do
    test -x "$_run" && source "$_run"
  done

  # Local
  test -x "Local.d/$_local" && source "Local.d/$_local"
}

if [[ $# -lt 1 ]]
then
  _usage
else
  _main "$@"
fi

# vim: set syn=bash sw=2 ts=2 et :
# eof
