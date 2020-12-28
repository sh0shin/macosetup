# TODO

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

## Language & Region
```sh
# Preferred languages
defaults write NSGlobalDomain AppleLanguages -array "en-US" "en-DE" "de-DE"

# Region
defaults write NSGlobalDomain AppleLocale -string "en_DE"

# First day of week
# Inherit

# Calendar
# Inherit

# Time format
# Inherit

# Temperature
defaults write NSGlobalDomain AppleTemperatureUnit -string "Celsius"

# Advanced
# Measurement units
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true
```
