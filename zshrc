# Path to ZSH
export ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="Soliah"

# ZSH Config
plugins=(docker git git-extras npm history history-substring vagrant forever nvm jira)
source $ZSH/oh-my-zsh.sh

# Default editor
export EDITOR=vim
# Set Term to support colors in Tmux
export TERM=xterm-256color
# Tmuxp
export DISABLE_AUTO_TITLE="true"

#Load aliases from file
if [ -f ~/.aliases ]; then
    source $HOME/.aliases
fi

# Load secret env vars
source $HOME/dotfiles/.secrets

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/bin"

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# RVM
source ~/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin"

# Powerline
source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh

# ssh
if [ -f ~/.ssh/id_rsa ]; then
    ssh-add ~/.ssh/id_rsa
    clear
fi

# Fuck!
eval $(thefuck --alias)
