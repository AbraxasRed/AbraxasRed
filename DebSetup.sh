#!/bin/bash

#get updates
sudo apt update

#get snapstore
sudo apt install snapd -y
sudo snap install core -y

#get programs 
sudo apt-get install gimp steam-installer chromium-browser vlc tor torbrowser-launcher tlp  libreoffice-gtk3 hexchat spyder3

#Delete programs
sudo apt-get purge firefox -y
#firewarll
sudo apt-get install ufw -y
sudo ufw enable

#wine Debian Bullseye
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo echo "deb https://dl.winehq.org/wine-builds/debian/ bullseye main" >  /tmp/winehq.list
sudo cp -v /tmp/winehq.list /etc/apt/sources.list.d/
sudo apt update
sudo apt-get install --install-recommends winehq-stable -y
sudo apt-get install winetricks -y

#install zoom
cd /tmp/
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb -y
#get themes


#get snap programs
sudo snap install discord -y
sudo snap install viber-unofficial -y

#upgrade packages
sudo apt update
sudo apt-get upgrade -y
