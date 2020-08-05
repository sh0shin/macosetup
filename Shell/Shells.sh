#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Shells
[[ "${_homebrew_shells:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Homebrew bash
if [[ "${_homebrew_bash:-false}" == true ]]
then
  grep -q "/usr/local/bin/bash" /private/etc/shells || \
  sudo tee -a /private/etc/shells >/dev/null <<'EOF'
/usr/local/bin/bash
EOF
fi

# Homebrew zsh
if [[ "${_homebrew_zsh:-false}" == true ]]
then
  grep -q "/usr/local/bin/zsh" /private/etc/shells || \
  sudo tee -a /private/etc/shells >/dev/null <<'EOF'
/usr/local/bin/zsh
EOF
fi

# vim: set syn=bash sw=2 ts=2 et :
# eof
