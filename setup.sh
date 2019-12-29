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
mkdir -p ~/.config
ln -sf ~/dev/dotfiles/fish ~/.config/
ln -sf ~/dev/dotfiles/.gitconfig ~/
