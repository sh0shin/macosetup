#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# pyenv
[[ "${_pyenv_enabled:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

export PYENV_ROOT="${_pyenv_root:-$HOME/.pyenv}"
export PATH="$PYENV_ROOT/bin:$PATH"

# pyenv from git
if [[ "${_pyenv_git_enabled:-false}" == true ]]
then
  if [[ -d "$PYENV_ROOT/.git" ]]
  then
    ( cd "$PYENV_ROOT" && echo git pull )
  else
    echo git clone "${_pyenv_git_url:-https://github.com/pyenv/pyenv.git}" "$PYENV_ROOT"
  fi
fi

# init
_pyenv_bin="$(which pyenv)"
if [[ -n "$_pyenv_bin" ]]
then
  eval "$(pyenv init -)"
fi

# virtualenv from git
if [[ "${_pyenv_venv_enabled:-false}" == true ]]
then
  if [[ "${_pyenv_venv_git_enabled:-false}" == true ]]
  then
    if [[ -d "$PYENV_ROOT/plugins/pyenv-virtualenv/.git" ]]
    then
      ( cd "$PYENV_ROOT/plugins/pyenv-virtualenv" && echo git pull )
    else
      echo git clone "${_pyenv_venv_git_url:-https://github.com/pyenv/pyenv-virtualenv.git}" "$PYENV_ROOT/plugins/pyenv-virtualenv"
    fi
  fi
fi

# init
_pyenv_venv_bin="$(which pyenv-virtualenv)"
if [[ -n "$_pyenv_venv_bin" ]]
then
  eval "$(pyenv virtualenv-init -)"
fi

# versions
if [[ -n "${_pyenv_versions[*]:-()}" ]]
then
  for _version in "${_pyenv_versions[@]}"
  do
    echo "pyenv version $_version"
    pyenv install -s "$_version"
  done
fi

# vim: set ft=sh syn=sh sw=2 ts=2 et :
# eof
