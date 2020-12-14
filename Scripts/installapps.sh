#!/usr/bin/env bash

echo "Installing Homebrew"
/usr/bin/ruby -e $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)
echo "Grant Homebrew Cask permission to install apps"
sudo chown -R $(whoami) /usr/local/var/homebrew
echo "Installing imagemagick"
brew install imagemagick
echo "Installing Fastlane"
brew cask install fastlane
echo "Installing 1Password"
brew cask install 1password
echo "Installing Charles"
brew cask install charles
echo "Installing Fork"
brew cask install fork
echo "Installing NordVPN"
brew cask install nordvpn
echo "Installing Reveal"
brew cask install reveal
echo "Installing Sketch"
brew cask install sketch
echo "Installing Sublime Text"
brew cask install sublime-text
echo "Installing Slack"
brew cask install slack

read -p "Press enter to continue"

echo "
Opening Mac App Store"
open /Applications/App\ Store.app 

echo "
Download the following from the Mac App Store:
- DaisyDisk"
read -p "Press enter to continue"
echo "- GIPHY CAPTURE"
read -p "Press enter to continue"
echo "- Xcode"

