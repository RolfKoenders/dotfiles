#!/usr/bin/env bash

echo 'Installing dotfiles!'

source install/link-dotfiles.sh

dist=`grep DISTRIB_ID /etc/*-release | awk -F '=' '{print $2}'`

if [ "$dist" == "Ubuntu" ]; then
	# Running on ubuntu
	source install/ubuntu/initial-ubuntu.sh
fi

if [ "$(uname)" == "Darwin" ]; then
	## Running on OSX"
	source install/osx/initial-osx.sh
	source install/osx/configuration.sh
	source install/nvm.sh
fi;

clear
echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo 'Installation done.'
