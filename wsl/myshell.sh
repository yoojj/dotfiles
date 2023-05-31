#!/bin/bash

sudo apt update -y 
sudo apt upgrade -y
 
sudo apt install -y build-essential ca-certificates libssl-dev 
sudo apt install -y net-tools zip unzip wget curl vim

sudo apt install -y openssh-server
sudo ufw allow ssh

sudo apt install -y git 
git config --global user.name "yjj"
git config --global user.username "yjj"
git config --global user.email "yoojjxyz@gmail.com"
git config --global init.defaultBranch 'main'
git config --global credential.helper store


bash_profile="$HOME/.bash_profile"
bashrc="$HOME/.bashrc"

if [[ ! -f "$bash_profile" ]]; then
  touch "$bash_profile"
fi

if [[ ! -f "$bashrc" ]]; then
  touch "$bashrc"
fi


echo ">>> install nvm"
nvm_version="v0.39.3"
node_version="10"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/${nvm_version}/install.sh | bash 
source "$bashrc"

nvm install "$node_version"
nvm use "$node_version"
nvm alias default "$node_version"
