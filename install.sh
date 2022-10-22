#!/usr/bin/bash
source ./colors.sh

workDir="$(pwd)"
me="$(whoami)"
access="sudo"
separator="=>"

# printlnGreen "$separator updating packages"
# $access apt update && $access apt dist-upgrade -y

# printlnGreen "$separator installing gnome-tweaks"
# $access apt install gnome-tweaks -y

printlnGreen "$separator install WhiteSur GTK Theme"
$access apt install git -y;
cd "$workDir/assets/themes"
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd "WhiteSur-gtk-theme" 
chmod +x * -R
./install.sh -t red
# cd ..
# rm -rfv WhiteSur-gtk-theme
cd "$workDir"