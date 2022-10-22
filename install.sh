#!/usr/bin/bash
source ./colors.sh

workDir="$(pwd)"

printlnGreen "=> updating packages"
apt update && apt dist-upgrade -y

printlnGreen "=> installing gnome-tweaks"
apt install gnome-tweaks -y

printlnGreen "=> install WhiteSur GTK Theme"
apt install git
cd "$workDir/assets/themes" 
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
