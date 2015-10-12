# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="Soliah"

alias zshconfig="vim ~/.zshrc"

#Load aliases from file
if [ -f ~/.aliases ]; then
    source $HOME/.aliases
fi

plugins=(docker git git-extras npm history history-substring vagrant forever nvm)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$PATH:$HOME/Documents/packer/

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# ssh
if [ -f ~/.ssh/id_rsa ]; then
    ssh-add ~/.ssh/id_rsa
fi

source /home/rolf/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export EDITOR=vim
eval $(thefuck --alias)
source .secrets
