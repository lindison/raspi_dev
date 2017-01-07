#!/bin/bash

# update Pi
apt-get update
apt-get upgrade -y

# Install bash-completions
apt-get install -y vim bash-completion

#  Install git and raspi-config
apt-get install git-core raspi-config -y

# Install Python
apt-get install -y vim-python-jedi
apt-get install -y build-essential
apt-get install -y python-dev
apt-get install -y python-virtualenv

