#!/bin/bash

if ! which brew > /dev/null 2>&1; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# for ricty
brew tap sanemat/font
cat ./brew.txt | grep -v "^#" | xargs brew install

# for NerdFont
brew tap homebrew/cask-fonts
cat ./brew_cask.txt | grep -v "^#" | xargs brew cask install

brew upgrade
