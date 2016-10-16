#!/usr/bin/env bash

# Install ZSH
sudo apt-get -y --force-yes install zsh

# Download oh-my-zsh install script and run it
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Install Tmux
sudo apt-get -y install tmux

# Install Tmuxp
sudo pip install tmuxp

# Install / Update Vim
sudo apt-get -y install vim

# Install Pip (Easy installing for Python packages) this will come in handy more often then you can imagine now.
sudo apt-get -y install python-setuptools python-dev build-essential

# Install Powerline
sudo pip install powerline-status
