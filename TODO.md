# TODO

## Defaults wrapper
```sh
_msx_defaults(){}
```

## Desktop Background
```sh
rm "$HOME/Library/Application Support/Dock/desktoppicture.db"

sudo rm /System/Library/CoreServices/DefaultBackground.jpg
sudo rm /System/Library/CoreServices/DefaultDesktop.heic

sudo ln -s $HOME/Pictures/macOSetup.jpg /System/Library/CoreServices/DefaultBackground.jpg
sudo ln -s $HOME/Pictures/macOSetup.heic /System/Library/CoreServices/DefaultDesktop.heic
```

## Bootscreen
```sh
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

## Finder
```sh
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true
```

## Misc

### Get codename
```sh
awk -F'macOS ' '/SOFTWARE LICENSE AGREEMENT FOR macOS / {print $NF}' "/System/Library/CoreServices/Setup Assistant.app/Contents/Resources/en.lproj/OSXSoftwareLicense.rtf"
```
