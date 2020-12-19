#!/bin/bash
#Title: install.sh
#Description: This will install google chrome, yaourt and update your system.
#Author: Dragon's Fedora
#Date: 17/01/2017
#Version: 0.0.3
#Using: sudo bash install.sh
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Updated: 19/12/2020
#Version: 0.0.4
#Autho: Arrayou
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

sudo pacman -R firefox
yes | sudo yaourt google-chrome-stable brackets
yes | sudo pacman -Syu
yes | sudo pacman -S steam
yes | sudo pacman -S flameshot 
yes | sudo pacman -S flatpak
yes | sudo pacman -S snap
read -n 1 -s -p "Finished!, Press any key to continue"
