#!/bin/bash

#get updates
sudo apt update

#get snapstore
sudo apt install snapd -y
sudo systemctl enable snapd.service
sudo systemctl start snapd.service
sudo snap install core

#get snap programs
sudo snap install discord 
sudo snap install viber-unofficial 


#get programs 
sudo apt-get install wget -y
sudo apt-get install gimp -y
sudo apt-get install chromium -y 
sudo apt-get install vlc -y
sudo apt-get install tor -y
sudo apt-get install torbrowser-launcher -y 
sudo apt-get install tlp -y
sudo apt-get install libreoffice-gtk3 -y 
sudo apt-get install hexchat -y
sudo apt-get install spyder3 -y
sudo apt-get install steam -y

#Delete programs
sudo apt-get purge firefox-esr -y

#firewarll
sudo apt-get install ufw -y
sudo ufw enable

#wine Debian Bullseye
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo echo "deb https://dl.winehq.org/wine-builds/debian/ bullseye main" >  /tmp/winehq.list
sudo cp -v /tmp/winehq.list /etc/apt/sources.list.d/
sudo apt-get install --install-recommends winehq-stable -y
sudo apt-get install winetricks -y

#install zoom
#cd /tmp
#wget https://zoom.us/client/latest/zoom_amd64.deb   DOESNT WORK. PACKAGE MIGHT BE WRONG
#sudo apt install ./zoom_amd64.deb -y

#get themes

#upgrade packages
sudo apt update
sudo apt-get upgrade -y
