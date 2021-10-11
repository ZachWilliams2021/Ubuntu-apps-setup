#!/bin/sh
apt-get update  &&  # To get latest package lists
apt-get install anki &&   # Anki Flash Cards
apt-get install gnome-tweaks -y &&   # Gnome Tweaks
apt-get install code -y &&   # Visual Studio Code
apt-get install virtualbox -y &&   # VirtualBox Hypervisor
# Brave Browser install -->
apt install apt-transport-https curl -y &&
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg  &&
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list &&
apt update -y &&
apt install brave-browser -y &&
# <-- Brave Browser completion
# Then initiate FlatPak package installations
apt install flatpak &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&
flatpak install flathub com.obsproject.Studio -y --noninteractive &&   # OBS Studio   
flatpak install flathub com.spotify.Client -y --noninteractive &&    # Spotify
flatpak install flathub org.shotcut.Shotcut -y --noninteractive &&    # Shotcut Video Editor
flatpak install flathub org.videolan.VLC -y --noninteractive &&    # VLC Video Player
flatpak update -y

## Did my Packages install correctly?
##echo Did my deb packages install correctly? &&
##apt list --installed | grep -i gnome-tweaks, code, virtualbox, brave-browser &&
##echo Did my flatpaks install correctly? &&
##flatpak list
