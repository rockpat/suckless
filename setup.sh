#!/bin/sh

#-----------------------------------------------------------------------------------------------------
#       ██╗ █████╗ ██╗  ██╗██╗   ██╗██████╗     ██╗    ██╗██╗███████╗██╗      ██████╗  ██████╗██╗  ██╗
#       ██║██╔══██╗██║ ██╔╝██║   ██║██╔══██╗    ██║    ██║██║██╔════╝██║     ██╔═══██╗██╔════╝██║  ██║
#       ██║███████║█████╔╝ ██║   ██║██████╔╝    ██║ █╗ ██║██║█████╗  ██║     ██║   ██║██║     ███████║
# ██    ██║██╔══██║██╔═██╗ ██║   ██║██╔══██╗    ██║███╗██║██║██╔══╝  ██║     ██║   ██║██║     ██╔══██║
#  ╚█████╔╝██║  ██║██║  ██╗╚██████╔╝██████╔╝    ╚███╔███╔╝██║███████╗███████╗╚██████╔╝╚██████╗██║  ██║
#   ╚════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝      ╚══╝╚══╝ ╚═╝╚══════╝╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝
#-----------------------------------------------------------------------------------------------------
#					  DWM Setup Script
#-----------------------------------------------------------------------------------------------------

install_dependencies() {
    if which apt-get &> /dev/null; then
        sudo apt-get update
        sudo apt-get install -y build-essential libx11-dev libxft-dev libxinerama-dev 
    elif which pacman &> /dev/null; then
        sudo pacman -Syu --noconfirm
        sudo pacman -S --noconfirm
    elif which dnf &> /dev/null; then
	sudo dnf update
        sudo dnf install -y
    elif which xbps-install &> /dev/null; then
        sudo xbps-install -Su
	sudo xbps-install -S 
    elif which zypper &> /dev/null; then
        sudo zypper refresh
        sudo zypper install -y
    else
        echo "Package manager not supported. Please install required programs & dependencies manually."
    fi
}


# Main script execution
#install_dependencies
#install_suckless

# ToDo: 1. Tweak DWM to your liking, 2. add compiling funktion to this script 
