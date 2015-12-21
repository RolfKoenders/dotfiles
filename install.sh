
# Try to make it a bit fancy!
clear
echo ''
echo 'This will install the following:'
echo '   - ZSH'
echo '   - oh-my-zsh'
echo '   - Tmux'
echo '   - Vim'
echo '   - Pip'
echo '   - Powerline'
echo ''
echo '* Some actions may ask for sudo powers'
sleep 5
echo 'Lets go!'
sleep 1
clear

# Install ZSH
sudo apt-get -y --force-yes install zsh
# Make zsh the defaul shell
clear
echo 'Making ZSH ur default shell, will ask for password'
chsh -s $(which zsh)
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

# The end
clear
echo ''
echo 'Everything should be installed and setup. Next step it to run the setup-dotfiles.sh script'
echo 'Dotfiles of Rolf Koenders <@RolfKoenders> on github & twitter'
echo ''
