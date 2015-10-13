# Path to ZSH
export ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="Soliah"

# ZSH Config
plugins=(docker git git-extras npm history history-substring vagrant forever nvm)
source $ZSH/oh-my-zsh.sh

# Default editor
export EDITOR=vim

#Load aliases from file
if [ -f ~/.aliases ]; then
    source $HOME/.aliases
fi

# Load secret env vars
source $HOME/dotfiles/.secrets

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# RVM
source /home/rolf/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin"

# ssh
if [ -f ~/.ssh/id_rsa ]; then
    ssh-add ~/.ssh/id_rsa
fi

# Fuck!
eval $(thefuck --alias)
