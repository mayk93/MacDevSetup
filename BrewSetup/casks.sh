#!/bin/sh

# ===== ===== ===== ===== =====
# 	Start
# ===== ===== ===== ===== =====

# Editors / Development
brew cask install atom
brew cask install pycharm
brew cask install unity
# Utilities
brew cask install iterm2
brew cask install tunnelblick
brew cask install virtualbox
# Browsers
brew cask install google-chrome
brew cask install torbrowser
# Communication
brew cask install skype
# Fun
brew cask install steam
brew cask install vlc
brew cask install spotify
# Uber fun
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null
brew cask install sauerbraten
