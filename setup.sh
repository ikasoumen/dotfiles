#!/bin/sh

# apt
sudo apt update
sudo apt install build-essential

# brew 
brew upgrade
brew install fish

# ssh-keygen
ssh-keygen -t ed25519

# dotfiles
cd ~
mkdir -p temp
cd temp
wget https://github.com/ikasoumen/dotfiles/archive/master.zip
unzip master.zip
mv dotfiles-master ~/.dotfiles

mkdir -p ~/.config
ln -sf ~/.dotfiles/fish ~/.config/
ln -sf ~/.dotfiles/.gitconfig ~/
