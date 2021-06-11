#!/bin/bash

# Script to be run on a fresh install

# Development Essentials
sudo apt update && sudo apt upgrade
sudo apt install g++
sudo apt install python3
sudo apt install openjdk8
sudo apt install -y nodejs
sudo apt install pip
sudo apt install mysql-shell

wget https://dev.mysql.com/downloads/repo/apt/mysql-apt-config_0.8.17-1_all.deb


# aliases
alias cls="clear"
export cls
