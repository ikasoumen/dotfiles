#!/bin/sh

# ssh
touch ~/.ssh
chmod 700 ~/.ssh

touch ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

touch ~/.ssh/id_rsa.pub

touch ~/.ssh/config

# apt 
sudo apt update

sudo apt install build-essential unzip

sudo apt install zsh 

sudo apt install mysql-client mysql-server

# sdkman 
curl -s "https://get.sdkman.io" | bash
# sdk list java
# sdk install java 11.0.4.hs-adpt
# sdk install sbt

# .zshrc
ln -sf ~/.dotfiles/.zshrc ~/

# .gitconfig
ln -sf ~/.dotfiles/.gitconfig ~/
