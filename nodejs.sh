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
echo "Enter your choice "
read version
echo "Installation Begins For Nodejs v8"
curl -sL https://deb.nodesource.com/setup_$version.x | sudo -E bash -
sudo apt-get update 
sudo apt-get install -y nodejs
