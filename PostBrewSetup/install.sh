#!/bin/sh

# ===== ===== ===== ===== =====
# 	Start
# ===== ===== ===== ===== =====

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Change the ZSH settings

  # First, get the powerline fonts and install them
  CURRENT_DIR=$(pwd)
  mkdir ~/Documents/GitHub
  mkdir ~/Documents/GitHub/GitHubRepos
  cd ~/Documents/GitHub/GitHubRepos
  git clone https://github.com/powerline/fonts.git
  cd fonts
  ./install.sh
  cd $CURRENT_DIR
