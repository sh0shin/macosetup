#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# pyenv
[[ "${_pyenv_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"


# TODO:
# Use homebrew if available
export PYENV_ROOT="${_pyenv_root:-$HOME/.pyenv}"
export PATH="$PYENV_ROOT/bin:$PATH"

# git clone/pull
if [[ -d "$PYENV_ROOT" ]]
then
  ( cd "$PYENV_ROOT" && git pull )
else
  git clone "${_pyenv_git_url:-https://github.com/pyenv/pyenv.git}" "$PYENV_ROOT"
fi
eval "$(pyenv init -)"

# virtualenv
if [[ "${_pyenv_venv_enabled:-false}" == true ]]
then
  if [[ -d "$PYENV_ROOT/plugins/pyenv-virtualenv" ]]
  then
    ( cd "$PYENV_ROOT/plugins/pyenv-virtualenv" && git pull )
  else
    git clone "${_pyenv_venv_git_url:-https://github.com/pyenv/pyenv-virtualenv.git}" "$PYENV_ROOT/plugins/pyenv-virtualenv"
  fi
  eval "$(pyenv virtualenv-init -)"
fi

# versions
if [[ -n "${_pyenv_versions[*]:-()}" ]]
then
  for _version in "${_pyenv_versions[@]}"
  do
    echo "$_version"
    pyenv install -s "$_version"
  done
fi

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
