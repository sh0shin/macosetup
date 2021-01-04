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

# pictures -> /opt/macosetup/Pictures
[[ -d /opt/macosetup/Pictures ]] && mkdir -p /opt/macosetup/Pictures

sudo ln -s /opt/macosetup/Pictures/macOSetup.jpg /System/Library/CoreServices/DefaultBackground.jpg
sudo ln -s /opt/macosetup/Pictures/macOSetup.heic /System/Library/CoreServices/DefaultDesktop.heic
```

## Finder
```sh
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true
```
