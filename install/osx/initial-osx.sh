#!/bin/sh

if test ! $(which brew); then
	echo "Installing homebrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."

# cli tools
brew install ack
brew install tree
brew install wget

# development tools
brew install git
brew install hub
brew install tmux
brew install zsh
brew install nvm
brew install markdown
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

exit 0
