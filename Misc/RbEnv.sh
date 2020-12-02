#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# rbenv
[[ "${_rbenv_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

export RBENV_ROOT="${_rbenv_root:-$HOME/.rbenv}"
export PATH="$RBENV_ROOT/bin:$PATH"

# git clone/pull
if [[ -d "$RBENV_ROOT" ]]
then
  ( cd "$RBENV_ROOT" && git pull )
else
  git clone "${_rbenv_git:-https://github.com/rbenv/rbenv.git}" "$RBENV_ROOT"
fi
eval "$(rbenv init -)"

# ruby-build
if [[ "${_rbenv_build_enabled:-true}" == true ]]
then
  if [[ -d "$RBENV_ROOT/plugins/ruby-build" ]]
  then
    ( cd "$RBENV_ROOT/plugins/ruby-build" && git pull )
  else
    mkdir "$RBENV_ROOT/plugins/ruby-build"
    git clone "${_rbenv_build_git:-https://github.com/rbenv/ruby-build.git}" "$RBENV_ROOT/plugins/ruby-build"
  fi
fi

# versions
if [[ -n "${_rbenv_versions[*]:-()}" ]]
then
  for _version in "${_rbenv_versions[@]}"
  do
    echo "$_version"
    rbenv install -s "$_version"
  done
fi

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
