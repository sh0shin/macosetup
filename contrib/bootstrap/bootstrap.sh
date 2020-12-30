#!/usr/bin/env bash
# shellcheck disable=1090

# Config
: "${bootstrap_config:="$PWD/bootstrap.cfg"}"

if [[ -e "$bootstrap_config" ]]
then
  source "$bootstrap_config"
else
  echo "No config, using defaults"
fi

# Defaults
: "${bootstrap_user_name:="macosetup"}"
: "${bootstrap_user_full_name:="macOSetup"}"
: "${bootstrap_user_user_id:=666}"
: "${bootstrap_user_shell:="/bin/bash"}"
: "${bootstrap_user_password:="-"}"
: "${bootstrap_user_hint:="macOSetup Admin ;)"}"
: "${bootstrap_user_home:="/Users/${bootstrap_user_name}"}"
: "${bootstrap_user_picture:="$PWD/bootstrap.png"}"

# Create admin user
echo "[I] Creating user ${bootstrap_user_name}"
sudo sysadminctl -addUser "${bootstrap_user_name}" \
                 -fullName "${bootstrap_user_full_name}" \
                 -UID "${bootstrap_user_user_id}" \
                 -shell "${bootstrap_user_shell}" \
                 -password "${bootstrap_user_password}" \
                 -hint "${bootstrap_user_hint}" \
                 -home "${bootstrap_user_home}" \
                 -admin \
                 -picture "${bootstrap_user_picture}"
#sudo sysadminctl -deleteUser "${bootstrap_user_name}"
