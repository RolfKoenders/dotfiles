#!/bin/sh

if : $(xcode-select -p); then
	echo "Xcode command line tools are installed. Skipping step."
else
	echo "Trying to install Xcode command line tools"
	xcode-select --install
fi

if test ! $(which brew); then
	echo "Installing homebrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\nInstalling homebrew bundle"

# Install bundle https://github.com/Homebrew/homebrew-bundle
brew tap Homebrew/bundle

# Go to location of Brewfile and run brew bundle
cd ~/dotfiles/install/osx
brew bundle

# Cd back to previous directory
cd -
