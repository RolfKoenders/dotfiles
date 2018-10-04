#!/bin/sh

echo -e "\n\nInstalling nodejs (from nvm)"

# reload nvm into this environment
source $(brew --prefix nvm)/nvm.sh

nvm install stable
nvm alias default stable
