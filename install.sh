#!/usr/bin/env bash

echo 'Installing dotfiles!'

source install/link-dotfiles.sh

dist=`grep DISTRIB_ID /etc/*-release | awk -F '=' '{print $2}'`

if [ "$dist" == "Ubuntu" ]; then
	# Running on ubuntu
	source install/ubuntu/initial-ubuntu.sh
    source install/ubuntu/install-fonts-ubuntu.sh
fi

if [ "$(uname)" == "Darwin" ]; then
	## Running on OSX"
	source install/osx/initial-osx.sh
	source install/osx/configuration.sh
	source install/osx/nvm.sh
fi;

clear
echo "Installing tpm, tmux plugin manager"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

clear
echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo 'Installation done.'
