#!/bin/bash

# update Pi
apt-get update
apt-get upgrade -y

# Install bash-completions
apt-get install -y bash-completion

#  Install git and raspi-config
apt-get install git raspi-config -y

# Install Python
apt-get install -y python-dev
apt-get install -y python-virtualenv

# setup pip


