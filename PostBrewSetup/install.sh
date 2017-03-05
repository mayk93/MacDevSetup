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
  cd ~/.oh-my-zsh/custom/plugins
  git clone git://github.com/zsh-users/zsh-autosuggestions
  cd $CURRENT_DIR

  # Now move the custom settings
  python PostBrewSetup/generate_zsh.py --user $(echo ~)
  cp PostBrewSetup/.zshrc ~/

  python PostBrewSetup/fix_wd_terminal_settings.py --user $(echo ~)

bash install_apms.sh
bash install_vim.sh
