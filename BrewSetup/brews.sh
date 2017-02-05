#!/bin/sh

# ===== ===== ===== ===== =====
# 	Start
# ===== ===== ===== ===== =====

brew update

# ZSH and Oh My ZSH
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

# Git
brew install git
brew install hub
brew install git-extras
# Other
brew install wget
brew install tree
brew install tor
# Python
brew install python
brew install python3
# JS
brew install node
brew install yarn
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
