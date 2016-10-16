#!/bin/sh

echo -e "\n\nInstalling Node (from nvm)"

# reload nvm into this environment
source $(brew --prefix nvm)/nvm.sh

nvm install stable
nvm alias default stable
