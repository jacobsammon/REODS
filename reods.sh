#!/bin/bash

# REODS: Really Easy Open Debian Software
# Created by Jacob Sammon <jacob@eml.pm> <jacobsammon.com>
#
# REODS is Copyright (C) 2021 Jacob Sammon
# This program comes with ABSOLUTELY NO WARRANTY; for details see
# reods.jbsn.uk/licence.
#
# This is free software, and you are welcome to redistribute it under
# certain conditions; see reods.jbsn.uk/licence for details.

#	Updating, etc
apt update -y
apt update -y

#	Install sudo
apt install sudo -y

#	Installing Programs | APT
apt-get install nano -y
apt-get install snapd -y
apt-get install gparted -y
apt-get install firefox -y
apt-get install thunderbird -y
apt-get install libreoffice -y
apt-get install python3 -y
apt-get install zenity -y
apt-get install lynx -y
apt-get install ffmpeg -y
apt-get install obs-studio -y
apt-get install wget -y
apt-get install neofetch -y
apt-get install qbittorrent -y

#	Installing Programs | SNAP
snap install gimp
snap install vlc

#	Install BRAVE (Web Browser)
apt install apt-transport-https curl gnupg -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list
apt update -y
apt install brave-browser -y

#	Install GNOME (DE / Desktop Environment)
apt-get install task-gnome-desktop -y

#	Set Wallpaper (GNOME)
gsettings set org.gnome.desktop.background picture-uri https://reods.jbsn.uk/background.jpg

#	Min and Maximise Buttons on Windows
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

#	Finished Installation Box
zenity --info --text="Installation finished!\n\nFor support, documentation, etc, see the REODS website, <a href="https://reods.jbsn.uk">reods.jbsn.uk</a>.\n\nVersion 0.5\n\n(C) Jacob Sammon, 2021" --title="Installation of REODS finished" --ok-label="Okay, great!"

#	Start GNOME
startx
