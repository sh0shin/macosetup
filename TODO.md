# TODO

## Defaults wrapper
```sh
_msx_defaults(){}
```

## Default Desktop/Background
```sh
rm "$HOME/Library/Application Support/Dock/desktoppicture.db"

sudo mount -uw /
sudo rm /System/Library/CoreServices/DefaultBackground.jpg
sudo rm /System/Library/CoreServices/DefaultDesktop.heic

sudo ln -s "$HOME/Pictures/macOSetup.jpg" /System/Library/CoreServices/DefaultBackground.jpg
sudo ln -s "$HOME/Pictures/macOSetup.heic" /System/Library/CoreServices/DefaultDesktop.heic

sudo diskutil quiet apfs updatePreboot /
```

## Loginscreen (NOT NEEDED WITH ABOVE?!)
```sh
# Get codename
CODENAME="$(awk -F'macOS ' '/SOFTWARE LICENSE AGREEMENT FOR macOS / {print $NF}' "/System/Library/CoreServices/Setup Assistant.app/Contents/Resources/en.lproj/OSXSoftwareLicense.rtf" | tr -d '\')"

# Check
echo "$CODENAME"

# Mojave
sudo cp "$HOME/Pictures/macOSetup.heic" "/Library/Desktop Pictures/$CODENAME.heic"

# Catalina+
sudo cp "$HOME/Pictures/macOSetup.heic" "/System/Library/Desktop Pictures/$CODENAME.heic"

# Update preboot
sudo diskutil quiet apfs updatePreboot /
```

## Homebrew
```sh
# change mode
sudo chown root:admin /usr/local
sudo chmod 2775 /usr/local
# hint: umask 0002
# or
sudo chmod 2770 /usr/local
# hint: umask 0007
```

## Dock
```sh
defaults write com.apple.dock showhidden -bool true
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.dock autohide-time-modifier -float 0
```

## Finder
```sh
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool false
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true

defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

#defaults write com.apple.finder InterfaceLevel simple
#defaults write com.apple.finder ProhibitFinderPreferences -bool true
#defaults write com.apple.finder ProhibitGoToFolder -bool true

defaults write com.apple.finder DisableAllAnimations -bool true
```

## Misc
```sh
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
```

## User infos
```sh
dscl . -read /Users/<USERNAME> RealName
dscl . -read /Users/<USERNAME> GeneratedUID
```

## App Store
Install or uninstall with `mas`
```
408981434 iMovie
409183694 Keynote
409201541 Pages
682658836 GarageBand
409203825 Numbers
```

## Config check
Check configuration syntax with something like this
```sh
CONFIG_SYNTAX="(^\s*#|^\s*$|^\s*[a-z_][^[:space:]]*=[^;&\(\`]*$)"
grep -E -iv "$CONFIG_SYNTAX" "$1"
```
