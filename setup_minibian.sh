#!/bin/bash

# update Pi
apt-get update
apt-get upgrade -y

# Install wireless drivers
apt-get install firmware-brcm80211 pi-bluetooth -y

# Install wireless tools
apt-get install -y firmware-realtek firmware-ralink wpasupplicant wireless-tools

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
apt-get install tree curl wget git-core -y

# Install Python
apt-get install -y vim-python-jedi build-essential python-dev python-virtualenv upstart

git clone https://github.com/lindison/raspi_dev
cp ~/raspi_dev/vim_config/vimrc ~/.vimrc
mkdir ~/.vim
mkdir ~/.vim/ftplugin/
cp ~/raspi_dev/vim_config/ftplugin/python.vim ~/.vim/ftplugin/python.vim
