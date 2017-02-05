#!/bin/sh

# ===== ===== ===== ===== =====
# 	Start
# ===== ===== ===== ===== =====

echo
echo Now installing brew and brew cask 🍻
echo —-—===——-
echo

# Look for brew.
if [ $(which brew | wc -w) -eq 1 ]; then
    echo You already have brew installed here: $(which brew)
else
    echo You do not have brew installed. Installing brew.
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
    brew doctor
fi

echo
echo ☺️️ Finished installing brew. Brew is installed here: $(which brew)
echo Now installing brews and casks!
echo —-—===——-
echo

bash BrewSetup/brews.sh
bash BrewSetup/casks.sh

echo
echo All done!
echo —-—===——-
echo