#!/bin/bash

# update Pi
apt-get update
apt-get upgrade -y

# Install wireless tools
apt-get install firmware-realtek firmware-ralink -y
apt-get install install wpasupplicant wireless-tools -y

# Reference: https://wiki.debian.org/WiFi/HowToUse#wpa_supplicant
# Run this command: wpa_passphrase myssid my_very_secret_passphrase
# Place these into /etc/network/interfaces
# For WPA/WPA2

# allow-hotplug wlan0
# iface wlan0 inet dhcp
#	wpa-ssid <value>
#	wpa-psk <value>


# Install vim and bash-completions
apt-get install -y vim bash-completion

#  Install git and raspi-config
apt-get install git-core -y

# Install Python
apt-get install -y vim-python-jedi
apt-get install -y build-essential
apt-get install -y python-dev
apt-get install -y python-virtualenv

git clone 
cp ~/raspi_dev/vim_config/vimrc ~/.vimrc
mkdir ~/.vim
mkdir ~/.vim/ftplugin/
cp ~/raspi_dev/vim_config/ftplugin ~/.vim/ftplugin/python.vim
