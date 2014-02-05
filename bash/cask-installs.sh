#!/bin/bash

brew cask install adium
brew cask install alfred
brew cask install appcleaner
brew cask install charles
brew cask install dropbox
brew cask install evernote
brew cask install f-lux
brew cask install firefox
brew cask install google-chrome
brew cask install imageoptim
brew cask install iterm2
brew cask install mailplane
brew cask install one-password
brew cask install optimal-layout
brew cask install owncloud
brew cask install the-unarchiver
brew cask install transmit
brew cask install lastfm
brew cask install vlc

echo "All Casks installed!"

brew cask alfred link
brew cask alfred status