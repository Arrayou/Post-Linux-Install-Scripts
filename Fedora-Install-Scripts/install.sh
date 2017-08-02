#!/bin/bash
#Title: install.sh
#Description: This will add the rpmfusion repositories and install handy applications.
#Author: Dragon's Fedora
#Date: 27/05/2017
#Version: 0.3
#Usage: sudo bash install.sh
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

sudo dnf install gnome-tweak-tool -y
sudo bash sudo sh -c 'curl https://www.folkswithhats.org/installer | bash'
sudo dnf install icedtea-web java-openjdk -y
sudo dnf install gstreamer1-plugins-base gstreamer1-plugins-good gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld gstreamer1-plugins-bad-free-extras ffmpeg -y
sudo dnf install vlc -y
sudo dnf install wine -y
sudo dnf update -y
echo "All Done :)"
