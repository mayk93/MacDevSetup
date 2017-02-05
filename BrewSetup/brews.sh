#!/bin/sh

# ===== ===== ===== ===== =====
# 	Start
# ===== ===== ===== ===== =====

brew update

# ZSH
brew install zsh
# Git
brew install git
brew install hub
brew install git-extras
# Vim
brew install vim && brew install macvim
# Python
brew install python
brew install python3
# JS
brew install node
brew install yarn
# Go
brew install go
# Rust
brew install rust
# Other
brew install wget
brew install tree
brew install tor
# Fun
brew install sl
brew install archey
brew install cmatrix
brew install cowsay
brew install figlet
brew install fortune
brew install toilet
brew install homebrew/games/nethack

brew cleanup
