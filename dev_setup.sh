#!/bin/bash
# Script to be run on a fresh install of Mint/Ubuntu/Debian distros

# First, update/upgrade
sudo apt update && sudo apt -y upgrade

# Applications
sudo apt install -y google-chrome-stable

# Development Essentials
sudo apt install -y code
sudo apt install -y vim
sudo apt install -y git
sudo apt install -y g++
sudo apt install -y python3
sudo apt install -y nodejs
sudo apt install -y npm
sudo apt install -y pip
sudo apt install -y mysql-server

# Make sure everything is fully up to date
sudo apt update && sudo apt -y upgrade

# Edit your .bashrc (add aliases, functions, etc)
read -p "Do you want to edit your .bashrc? (y/n)" input

if [ "$input" == 'y' ]
then
    vim ~/.bashrc
    source ~/.bashrc 
fi


echo "Completed First Time Setup."
# end