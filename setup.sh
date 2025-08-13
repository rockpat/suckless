#!/bin/sh -e

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
        $PRIVILEGES apt-get update
        $PRIVILEGES apt-get install -y build-essential libx11-dev libxft-dev libxinerama-dev
    elif which pacman &> /dev/null; then
        $PRIVILEGES pacman -Syu --noconfirm
        $PRIVILEGES pacman -S --noconfirm 
    elif which dnf &> /dev/null; then
        $PRIVILEGES dnf update
        $PRIVILEGES dnf install -y 
    elif which xbps-install &> /dev/null; then
        $PRIVILEGES xbps-install -Su
        $PRIVILEGES xbps-install -S 
    elif which zypper &> /dev/null; then
        $PRIVILEGES zypper refresh
        $PRIVILEGES zypper install -y 
    else
        echo "Package manager not supported. Please install required programs & dependencies manually."
    fi
}

# Main script execution

case "$(whoami)" in
  root) PRIVILEGES="" ;;
  *) PRIVILEGES="sudo" ;;
esac

#install_dependencies
#install_suckless

# ToDo: 1. Tweak DWM to your liking, 2. add compiling function to this script, (3. Add Github Action for already compiled version)
