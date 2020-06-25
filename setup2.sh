#!/bin/sh

# ssh
mkdir ~/.ssh
chmod 700 ~/.ssh

touch ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

touch ~/.ssh/id_rsa.pub

touch ~/.ssh/config

# apt 
sudo apt update

sudo apt -y install build-essential unzip zip

sudo apt -y install zsh fish

sudo apt -y install mysql-client mysql-server

# LinuxBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# dotfiles 
wget -O /tmp/master.zip https://github.com/ikasoumen/dotfiles/archive/master.zip
unzip -d ~/ /tmp/master.zip
mv ~/dotfiles-master ~/.dotfiles
rm /tmp/master.zip

# .zshrc
ln -sf ~/.dotfiles/.zshrc ~/

# .gitconfig
ln -sf ~/.dotfiles/.gitconfig ~/

# fish
mkdir ~/.config
ln -sf ~/.dotfiles/fish ~/.config/

# nodenv
brew install nodenv

# mysql setup
#
# needs workaround hotfix
# @see: https://github.com/wslutilities/wslu/issues/101
# 
# ```/etc/profile.d/wsl-integration.sh
# if [[ "${HOME}" == "/" ]]; then
#   exit 0
# fi
# ```

# mysql: no root password
# @see: https://qiita.com/mwatanabe@github/items/7e9a40d31bc27ab9d901
sudo service mysql start
sudo mysql -uroot -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';"