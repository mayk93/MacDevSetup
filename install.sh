#!/bin/sh

# ===== ===== ===== ===== =====
# 	Start
# ===== ===== ===== ===== =====

echo
echo Welcome to the  dev setup script.
echo —-—===——-
echo

# ===== ===== ===== ===== =====
# 	Password and name
# ===== ===== ===== ===== =====

# First, make sure there is some username given as input.
USERNAME=$1
USERNAME_SIZE=${#USERNAME}
MIN_USERNAME_SIZE=3
if [ "$USERNAME_SIZE" -lt "$MIN_USERNAME_SIZE" ]; then
  echo You must have a username that is at least $MIN_USERNAME_SIZE letters in length
  exit
fi

echo You will need to input your 🔑 \(password\) just once.
echo
sudo -v

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo Changing Hostname
echo
sudo scutil --set ComputerName $USERNAME
sudo scutil --set HostName $USERNAME
sudo scutil --set LocalHostName $USERNAME

echo You will also need to download xcode
xcode-select --install

echo Setting up your 💻  now. Will take a few minutes.
echo —-—===——-
echo

# ===== ===== ===== ===== =====
# 	Individual scripts
# ===== ===== ===== ===== =====

bash BrewSetup/install_brew.sh
sudo bash DefaultsSetup/install_defaults.sh
