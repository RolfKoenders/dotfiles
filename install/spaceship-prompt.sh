#!/usr/bin/env bash

echo "\nInstalling spaceship-prompt ZSH theme\n"
echo "\nCloning repo & Creating a symlink to zsh themes folder\n"

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo "\nTrying to replace your current zsh theme in your .zshrc file\nif this doesn\'t work, please set your ZSH_THEME to spaceship'"
sed -i '' 's/ZSH_THEME.*/ZSH_THEME="spaceship"/g' ~/.zshrc