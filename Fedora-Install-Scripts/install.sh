#!/bin/bash
#Title: install.sh
#Description: This will add the rpmfusion repositories and install handy applications.
#Author: Dragon's Fedora
#Date: 27/05/2017
#Version: 1.0
#Usage: sudo bash install.sh
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


PS3='Please enter your choice: '
options=("Continue" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Continue")
        echo "#_________________________________________________________________#"
	echo "#                  Warning! This may Take a while.                #"
	echo "#_________________________________________________________________#"
	
	sudo dnf install gnome-tweak-tool -y
	
	echo "#                          Installing Fedy                        #"
	echo "#_________________________________________________________________#"
	
	sudo dnf install https://dl.folkswithhats.org/fedora/$(rpm -E %fedora)/RPMS/folkswithhats-release.noarch.rpm
	sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
	sudo dnf install fedy
	
	echo "#                          Installing Tools                       #"
	echo "#_________________________________________________________________#"
	
	sudo dnf install icedtea-web java-openjdk -y
	sudo dnf install gstreamer1-plugins-base gstreamer1-plugins-good gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld gstreamer1-plugins-bad-free-extras ffmpeg -y
	sudo dnf install vlc -y
	sudo dnf install wine -y
	sudo dnf update -y
	
	echo "#_________________________________________________________________#"
	echo "#    All Done :); It's reccomended to reboot your system.         #"
        echo "#_________________________________________________________________#"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
