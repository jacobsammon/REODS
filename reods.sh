#!/bin/bash

# REODS: Really Easy Open Debian Software
# Created by Jacob Sammon <jacob@eml.pm> <jacob-sa.net>
#
# REODS is Copyright (C) 2021 Jacob Sammon
# This program comes with ABSOLUTELY NO WARRANTY; for details see
# jacob-sa.net/software/licences/GPL-v3/
#
# This is free software, and you are welcome to redistribute it under
# certain conditions; see github.com/jacobsammon/REODS/blob/main/LICENSE
# for details.

#	Updating, etc
apt update -y
apt upgrade -y

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
apt-get install neovim -y

# Muttwizard
apt-get install neomutt -y
apt-get install isync -y
apt-get install msmtp -y
apt-get install pass -y
apt-get install pam-gnupg -y
apt-get install notmuch -y
apt-get install abook -y
apt-get install urlview -y
apt-get install mpop -y

git clone https://github.com/LukeSmithxyz/mutt-wizard
cd mutt-wizard
sudo make install

cd ~

#	Installing Programs | SNAP
snap install gimp
snap install vlc

#	Install BRAVE (Web Browser)
apt install apt-transport-https curl gnupg -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list
apt update -y
apt install brave-browser -y

# CLI Weather

echo "#!/bin/sh
CYAN='\033[0;36m'
printf "${CYAN}"
curl wttr.in/?format=3" > /usr/bin/weather
chmod +x /usr/bin/weather

#	Install GNOME (DE / Desktop Environment)
apt-get install task-gnome-desktop -y

# REODS Note
echo "

██████╗ ███████╗ ██████╗ ██████╗ ███████╗
██╔══██╗██╔════╝██╔═══██╗██╔══██╗██╔════╝
██████╔╝█████╗  ██║   ██║██║  ██║███████╗
██╔══██╗██╔══╝  ██║   ██║██║  ██║╚════██║
██║  ██║███████╗╚██████╔╝██████╔╝███████║
╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚══════╝

It's a good idea to run the following command post-install: gsettings set org.gnome.desktop.wm.preferences button-layout \":minimize,maximize,close\"" | tee REODS_POST-INSTALL

#	Start GNOME
startx
