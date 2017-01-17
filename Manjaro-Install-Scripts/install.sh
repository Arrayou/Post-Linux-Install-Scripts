#!/bin/bash
#Title: install.sh
#Description: This will install google chrome, yaourt and update your system.
#Author: Dragon's Fedora
#Date: 17/01/2017
#Version: 0.0.3
#Using: sudo bash install.sh
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

sudo pacman -R firefox
yes | sudo yaourt google-chrome-stable brackets
yes | sudo pacman -Syu
read -n 1 -s -p "Finished!, Press any key to continue"
