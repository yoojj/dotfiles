#!/bin/bash

nvm_version="v0.39.3"
node_version="10"


sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak


sudo apt update -y 
sudo apt upgrade -y
 
sudo apt install -y build-essential libssl-dev  
sudo apt install -y ca-certificates
sudo apt install -y net-tools zip unzip wget curl vim cmake podman  


sudo apt install -y openssh-server
sudo ufw allow ssh


sudo wget -q https://apt.thoughtbot.com/thoughtbot.gpg.key -O /etc/apt/trusted.gpg.d/thoughtbot.gpg
echo "deb https://apt.thoughtbot.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/thoughtbot.list
sudo apt update
sudo apt install rcm


sudo apt install -y git 
git config --global user.name "yjj"
git config --global user.username "yjj"
git config --global user.email "yoojjxyz@gmail.com"
git config --global init.defaultBranch "main"
git config --global credential.helper store

