#!/bin/bash


echo "#######################################################################################"
echo "#                                                                                     #"
echo "#                                  H.a.S.a.N's SCRIPTS                                #"
echo "#                                                                                     #"
echo "#                                Copyright (C) 2023 - 2024,                           #"
echo "#                                                                                     #"
echo "#                                  PufferPanel Installer                              #"
echo "#                                                                                     #"
echo "#######################################################################################"
echo ""
echo "* [0] Install PufferPanel in Supported OS"
echo "* [1] Install PufferPanel in UnSupported OS"

read -p "Enter Input (0-1): " input

case $input in

    0)
    apt update && apt upgrade -y
    apt-get update && apt-get upgrade -y
    curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
    sudo apt-get install pufferpanel
    sudo systemctl enable --now pufferpanel
    sudo pufferpanel user add
    echo "PufferPanel Installed Runned in port 8080"
    echo "if PufferPanel Not Worked or Failed in Install try renistall it by the code but in Unsupport OS";;
        1)
    apt update && apt upgrade -y
    apt-get update && apt-get upgrade -y
    curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo os=ubuntu dist=jammy bash
    sudo apt-get install pufferpanel
    sudo systemctl enable --now pufferpanel
    sudo pufferpanel user add
    echo "PufferPanel Installed Runned in port 8080";;

    esac
