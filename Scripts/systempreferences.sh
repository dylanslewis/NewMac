#!/usr/bin/env bash

# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"

# Stop Safari from offering to store passwords and credit card data
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Prevent Photos opening when a new device is connected
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Turn on App Exposé
echo "Opening System Preferences"
open /Applications/System\ Preferences.app 
echo "
Go to Trackpad settings:
- Turn on App Exposé
"
read -p "Press enter to continue"

SCREENSHOTS="Screenshots"
cd ~/Documents
mkdir $SCREENSHOTS
defaults write com.apple.screencapture location "~/Documents/$SCREENSHOTS"
echo "
To update iOS Screenshots directory:
- Open iOS Simulator
- Press Option + ⌘ + S
- Set ~/Documents/$SCREENSHOTS as the default directory
"
read -p "Press enter to continue"

open ~/Documents
echo "
Drag $SCREENSHOTS into the Dock
"
read -p "Press enter to continue"
