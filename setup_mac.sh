#!/bin/sh

# HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# .zshrc
ln -sf ~/.dotfiles/.zshrc ~/

# .gitconfig
ln -sf ~/.dotfiles/.gitconfig ~/

# fish
brew install fish
mkdir -p ~/.config
ln -sf ~/.dotfiles/fish ~/.config/

# nodenv
brew install nodenv

