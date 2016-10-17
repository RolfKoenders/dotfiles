#!/bin/sh

echo "Cloning Dracula iTerm theme"
git clone https://github.com/dracula/iterm.git ~/iterm/themes
echo -e "\n\nImport the theme in iTerm\n\n"

if test ! $(which brew); then
	echo "Installing homebrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."

# Cli tools
brew install ack
brew install tree
brew install wget

# Development tools
brew install git
brew install hub
brew install tmux
brew install zsh
brew install nvm
brew install markdown
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
