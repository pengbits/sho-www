#!/usr/bin/env bash

# NVM Node Version Manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# reload shell to use nvm
source ~/.bash_profile
source ~/.bashrc
# install current supported node version
NODE_VERSION="$(cat .nvmrc)"
nvm install $NODE_VERSION
nvm alias default $NODE_VERSION
# set node to version specified in .nvmrc
nvm use

echo -en "\033[01;32m***PLEASE START A NEW SHELL SESSION FOR NODE VERSION TO TAKE EFFECT***\n"

exit
