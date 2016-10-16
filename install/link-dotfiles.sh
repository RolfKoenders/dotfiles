#!/usr/bin/env bash

DIR=~/dotfiles                    # dotfiles directory
OLDDIR=~/dotfiles_old             # old dotfiles backup directory
FILES="vimrc vim zshrc tmux.conf aliases" # list of files/folders to symlink in homedir

mkdir -p $OLDDIR
cd $DIR

for file in $FILES; do
	mv ~/.$file $OLDDIR
	ln -s $DIR/$file ~/.$file
done
echo 'Dotfiles linked.'
sleep 1
clear
