#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Download Brewfile if it doesn't exist
if [ ! -f Brewfile ]; then
  curl -o https://raw.githubusercontent.com/cbarrese/dotfiles/master/install/Brewfile
fi

# Install Brewfile dependencies
brew bundle

# Remove outdated versions from the cellar
brew cleanup
