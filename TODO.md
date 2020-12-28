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

## Finder
```sh
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true
```
