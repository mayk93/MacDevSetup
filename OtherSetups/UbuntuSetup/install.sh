#!/usr/bin/env bash

# ===== ===== ===== ===== =====
# 	Start
# ===== ===== ===== ===== =====

echo
echo Welcome to the 🐧 dev setup script.
echo —-—===——-
echo

# ===== ===== ===== ===== =====
# 	Password and name
# ===== ===== ===== ===== =====

# First, make sure there is some username given as input.
USERNAME=$1
USERNAME_SIZE=${#USERNAME}
MIN_USERNAME_SIZE=3
COMPUTER_NAME="$(tr '[:lower:]' '[:upper:]' <<< ${USERNAME:0:1})${USERNAME:1}sMBP"
if [ "$USERNAME_SIZE" -lt "$MIN_USERNAME_SIZE" ]; then
  echo You must have a username that is at least $MIN_USERNAME_SIZE letters in length
  exit
fi

echo You will need to input your 🔑 \(password\) just once.
echo
sudo -v

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo Setting up your 🐧 now. Will take a few minutes.
echo —-—===——-
echo

# ===== ===== ===== ===== =====
# 	Individual scripts
# ===== ===== ===== ===== =====

bash ./post_install.sh

# Change the shell
sudo chsh -s /usr/local/bin/zsh $USERNAME
touch ~/.bash_profile
echo 'export SHELL=$(which zsh)' >> ~/.bash_profile
echo 'exec $(which zsh) -l' >> ~/.bash_profile

echo Should all be done! Get ready to code! 👨‍💻
echo —-—===——-
echo