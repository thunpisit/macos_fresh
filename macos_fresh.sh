#!/bin/sh

#Homebrew and Cask
echo installing homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" -y
echo installing caskroom/cask
brew tap caskroom/cask

#System
echo installing systems via brew
brew install wget curl git -y

#Entertainment
echo installing entertainments via brew
brew cask install google-chrome google-drive google-hangouts teamviewer dropbox spotify skype adobe-creative-cloud slack zoomus trello telegram -y

#Development
echo installing developments via brew
brew cask install anaconda atom github brackets docker cyberduck mongodb-compass daisydisk kitematic postman -y

#Cleanup
echo cleaning up brew caches
brew cleanup —force
rm -f -r /Library/Caches/Homebrew/*

#Manually
echo you have to manually install: sketch, 1password, cleammymac, line grammarly, ghost, bear, agenda, microsoft offices
