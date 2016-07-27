#!/bin/bash
#Title: install.sh
#Description: This will install google chrome, yaourt and update your system.
#Author: Dragon's Fedora
#Date: 27/07/2016
#Version: 0.1
#Using: sudo bash install.sh
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

sudo pacman -R firefox
wget http://aur.archlinux.org/packages/yaourt/yaourt.tar.gz
tar xvzf yaourt.tar.gz
cd yaourt
yes | sudo makepkg 
yes | sudo pacman -U yaourt.pkg.tar.gz -y
yes | sudo yaourt google-chrome-stable -y
yes | sudo pacman -Syu
