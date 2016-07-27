#!/bin/bash
#Title: install.sh
#Description: This will add the rpmfusion repositories and install handy applications.
#Author: Dragon's Fedora
#Date: 27/07/2016
#Version: 0.1
#Using: sudo bash install.sh
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

sudo dnf install gnome-tweak-tool -y
sudo dnf install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-24.noarch.rpm -y
sudo dnf install --nogpgcheck http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-24.noarch.rpm -y
sudo bash -c 'su -c "curl http://folkswithhats.org/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer"' -y
sudo dnf install icedtea-web java-openjdk -y
sudo dnf install gstreamer1-plugins-base gstreamer1-plugins-good gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld gstreamer1-plugins-bad-free-extras ffmpeg -y
sudo dnf install vlc -y
sudo dnf install wine -y
sudo dnf update -y

