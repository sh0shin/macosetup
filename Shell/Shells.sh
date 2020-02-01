#!/usr/bin/env bash
#

# Don't run directly!
[[ "$_" == "$0" ]] && exit 255

# Shells
[[ "${_homebrew_bash:-false}" == false ]] && return
echo "${BASH_SOURCE[0]}"

# Homebrew bash
grep "/usr/local/bin/bash" /private/etc/shells >/dev/null || \
sudo tee -a /private/etc/shells >/dev/null <<'EOF'
/usr/local/bin/bash
EOF

# vim: set syn=bash sw=2 ts=2 et :
# eof
