#!/bin/sh

echo "Cloning Dracula iTerm theme"
git clone https://github.com/dracula/iterm.git ~/iterm/themes
echo -e "\nDracula theme cloned, import the theme in iTerm\n"

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
