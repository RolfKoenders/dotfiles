# Path to ZSH
export ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="Soliah"

# ZSH Config
plugins=(docker git git-extras history history-substring nvm)
source $ZSH/oh-my-zsh.sh

# Make VIM Default editor
export EDITOR=vim

#Load aliases from file
if [ -f ~/.aliases ]; then
	source $HOME/.aliases
fi

# Load secret env vars
if [ -f ~/.secrets ]; then
	source $HOME/.secrets
fi

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Add users bin folder to path
if [ -e ~/bin ]; then
	export PATH="$PATH:~/bin"
fi

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# RVM
source ~/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin"

# ssh
if [ -f ~/.ssh/id_rsa ]; then
	ssh-add ~/.ssh/id_rsa
fi

# yarn
export PATH="$PATH:`yarn global bin`"
