# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="prose"

alias zshconfig="vim ~/.zshrc"
alias bp="cd ~/Documents/dev-boxes/bright-portal"
alias bacpass="echo 'JiLYTSdI=y~2' | pbcopy"

#Load aliases from file
if [ -f ~/.aliases ]; then
    source $HOME/.aliases
fi

plugins=(git git-extras jira npm history history-substring vagrant)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# ssh
if [ -f ~/.ssh/id_rsa ]; then
    ssh-add ~/.ssh/id_rsa
fi
