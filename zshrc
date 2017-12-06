# Path to ZSH
export ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="bullet-train"

# ZSH Config
plugins=(git git-extras)
source $ZSH/oh-my-zsh.sh

# Make VIM Default editor
export EDITOR=vim

#Load aliases from file
if [ -f ~/.aliases ]; then
	source $HOME/.aliases
fi

# Load secret env vars
if [ -f ~/dotfiles/.secrets ]; then
	source $HOME/dotfiles/.secrets
fi

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/home/rolf/apps:/home/rolf/bin"

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# RVM
# source ~/.rvm/scripts/rvm
# export PATH="$PATH:$HOME/.rvm/bin"

# ssh
if [ -f ~/.ssh/id_rsa ]; then
	ssh-add ~/.ssh/id_rsa
fi

# export GOPATH=$HOME/.go
# export PATH="$PATH:$GOPATH"

# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# added by travis gem
# [ -f /home/rolf/.travis/travis.sh ] && source /home/rolf/.travis/travis.sh
