#!/bin/bash
echo "Available Version"
echo "For V4 Enter 4"
echo "For V5 Enter 5"
echo "For V6 Enter 6"
echo "For V7 Enter 7"
echo "For V8 Enter 8"
echo "For V9 Enter 9"
echo "For V10 Enter 10"
echo "For V11 Enter 11"
echo "For V12 Enter 12"
echo "Enter your choice : "
read version 


install(){
    sudo apt install -y curl 
    curl -sL https://deb.nodesource.com/setup_$version.x | sudo -E bash -
    sudo apt-get update 
    sudo apt-get install -y nodejs

}


if which node > /dev/null
    then
        echo " Removing old binaries "
        sudo apt remove -y nodejs
        sudo apt autoremove -y
        rm -rf /etc/apt/sources.list.d/nodesource.list
        echo "Installation Begins For Nodejs v$version"
        install
    else
        echo "Installation Begins For Nodejs v$version"
        install
fi
