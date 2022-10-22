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

# printlnGreen "$separator install WhiteSur GTK Theme"
# $access apt install git -y;
# if ! [ -d "$workDir/assets/themes" ]; then
#     mkdir -v "$workDir/assets/themes"
# fi
# cd "$workDir/assets/themes"
# git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
# cd "WhiteSur-gtk-theme" 
# chmod +x * -R
# ./install.sh -t red
# cd ..
# rm -rf "WhiteSur-gtk-theme"
# cd "$workDir"

# printlnGreen "$separator download and install reversal icon"
# if ! [ -d "$workDir/assets/icons" ]; then
#     mkdir -v "$workDir/assets/icons"
# fi
# cd "$workDir/assets/icons"
# git clone https://github.com/yeyushengfan258/Reversal-icon-theme.git
# cd "Reversal-icon-theme"
# chmod +x * -R
# ./install.sh -red
# cd ..
# rm -rf "Reversal-icon-theme"
# cd "$workDir"

# printlnGreen "$separator installing fonts"
# if ! [ -d ~/.local/share/ ]; then
#     mkdir -pv ~/.local/share/
# fi
# cp -rv "$workDir/assets/fonts/" ~/.local/share/

printlnGreen "$separator download and install vimix cursors theme"
if ! [ -d "$workDir/assets/cursors" ]; then
    mkdir -pv "$workDir/assets/cursors"
fi
if ! [ -d ~/.local/share/icons ]; then
    mkdir -pv ~/.local/share/icons
fi
cd "$workDir/assets/cursors"
git clone https://github.com/vinceliuice/Vimix-cursors.git
cd "Vimix-cursors"
chmod +x * -R
./install.sh
cd ..
rm -rf "Vimix-cursors"
if ! [ -d ~/.icons ]; then
    mkdir -pv ~/.icons
fi
mv -v ~/.local/share/icons/Vimix-cursors ~/.icons/
mv -v ~/.local/share/icons/Vimix-white-cursors ~/.icons/