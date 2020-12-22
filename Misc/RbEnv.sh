#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# rbenv
[[ "${_rbenv_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

export RBENV_ROOT="${_rbenv_root:-$HOME/.rbenv}"
export PATH="$RBENV_ROOT/bin:$PATH"

# rbenv from git
if [[ "${_rbenv_git_enabled:-false}" == true ]]
then
  if [[ -d "$RBENV_ROOT/.git" ]]
  then
    ( cd "$RBENV_ROOT" && git pull )
  else
    git clone "${_rbenv_git_url:-https://github.com/rbenv/rbenv.git}" "$RBENV_ROOT"
  fi
fi

# init
_rbenv_bin="$(which rbenv)"
if [[ -n "$_rbenv_bin" ]]
then
  eval "$(rbenv init -)"
fi

# ruby-build from git
if [[ "${_rbenv_build_enabled:-true}" == true ]]
then
  if [[ "$_rbenv_build_git_enabled:-false}" == true ]]
  then
    if [[ -d "$RBENV_ROOT/plugins/ruby-build/.git" ]]
    then
      ( cd "$RBENV_ROOT/plugins/ruby-build" && git pull )
    else
      mkdir "$RBENV_ROOT/plugins/ruby-build"
      git clone "${_rbenv_build_git_url:-https://github.com/rbenv/ruby-build.git}" "$RBENV_ROOT/plugins/ruby-build"
    fi
  fi
fi

# versions
if [[ -n "${_rbenv_versions[*]:-()}" ]]
then
  for _version in "${_rbenv_versions[@]}"
  do
    echo "rbenv version $_version"
    rbenv install -s "$_version"
  done
fi

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
