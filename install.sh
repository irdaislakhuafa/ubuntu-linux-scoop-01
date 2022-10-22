#!/usr/bin/bash
source ./colors.sh

workDir="$(pwd)"
me="$(whoami)"
access="sudo"
separator="=>"

opt="$1"
if [ "$opt" = "first" ]; then
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

    # printlnGreen "$separator download and install vimix cursors theme"
    # if ! [ -d "$workDir/assets/cursors" ]; then
    #     mkdir -pv "$workDir/assets/cursors"
    # fi
    # if ! [ -d ~/.local/share/icons ]; then
    #     mkdir -pv ~/.local/share/icons
    # fi
    # cd "$workDir/assets/cursors"
    # git clone https://github.com/vinceliuice/Vimix-cursors.git
    # cd "Vimix-cursors"
    # chmod +x * -R
    # ./install.sh
    # cd ..
    # rm -rf "Vimix-cursors"
    # if ! [ -d ~/.icons ]; then
    #     mkdir -pv ~/.icons
    # fi
    # mv -v ~/.local/share/icons/Vimix-cursors ~/.icons/
    # mv -v ~/.local/share/icons/Vimix-white-cursors ~/.icons/

    printlnGreen "$separator install gnome extensions"
    if ! [ -d ~/.local/share/gnome-shell/extensions ]; then
        mkdir -pv ~/.local/share/gnome-shell/extensions
    fi
    cp -r ./assets/extensions/* ~/.local/share/gnome-shell/extensions/
    printlnGreen "after installing extensions please logout first and enable in extensions settings"
    exit 0
elif [ "$opt" = "after" ]; then
    printlnGreen "$separator enable all extensions"
    gnome-extensions enable arcmenu@arcmenu.com
    gnome-extensions enable blur-my-shell@aunetx
    gnome-extensions enable CoverflowAltTab@palatis.blogspot.com
    gnome-extensions enable dash-to-panel@jderose9.github.com
    gnome-extensions enable gsconnect@andyholmes.github.io
    gnome-extensions enable mediacontrols@cliffniff.github.com
    gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

    printlnGreen "$separator import extensions configs"
    $access apt install dconf-cli -y
    cd "./assets/all_extensions_config/"
    dconf load /org/gnome/shell/extensions/< all_extension_settings.conf

else 
    printlnRed "please select \"first\" or \"after\" mode";
    exit 1
fi
