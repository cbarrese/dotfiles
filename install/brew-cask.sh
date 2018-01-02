#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
    1password
    google-drive
    spectacle
    flux
    dash
    evernote
    iterm2
    intellij-idea
    firefox
    firefoxnightly
    google-chrome
    google-chrome-canary
    hammerspoon
    macdown
    opera
    screenflow
    spotify
    skype
    slack
    tower
    transmit
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package
