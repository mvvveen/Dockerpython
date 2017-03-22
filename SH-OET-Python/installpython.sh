#!/bin/bash

# This script installs Python 2.7.6 3.3.5 and Anaconda3
# My Anaconda don't want none unless you got buns hun


clear
echo "This script will install and configure anaconda software for your system"

# Check whether you are root

#if [ "$(whoami)" == "root" ]; then
#        echo "Sorry, you are running with root, please run without sudo rights"
#        exit 1
#fi

# Let's download pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# Let's install some dependencies

# Let's set some of those environment variables and make sure them suckers stick after a reboot (needs some checks)
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
export PYENV_ROOT="/root/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval $(pyenv virtualenv-init -)

# Here we install the actual python versions
pyenv install 3.3.5
pyenv rehash
#pyenv install 2.7.6
#pyenv rehash


if [ ! -d "~/.pyenv/plugins/pyenv-virtualenv" ]; then

        git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
fi

#add
