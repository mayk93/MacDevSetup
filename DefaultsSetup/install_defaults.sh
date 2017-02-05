#!/bin/sh

# ===== ===== ===== ===== =====
# 	Start
# ===== ===== ===== ===== =====

echo
echo Now setting up the Mac defaults 🚀
echo —-—===——-
echo

# ===== ===== ===== ===== =====
# 	Text related
# ===== ===== ===== ===== =====

# —— —— —— —— —— 
# Make the text edit app use plain text instead of rich text
# —— —— —— —— —— 

echo Setting text app to plain text mode.
echo
defaults write com.apple.TextEdit RichText -int 0

# —— —— —— —— —— 
# Disable smart quotes and smart dashes
# —— —— —— —— —— 

echo Disabling smart quotes and smart dashes
echo
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# ===== ===== ===== ===== =====
# 	Trackpad and gestures
# ===== ===== ===== ===== =====

# —— —— —— —— —— 
# Enable soft touch ( tap to click ) 
# —— —— —— —— —— 

echo Enabling soft touch
echo
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# —— —— —— —— —— 
# Three finger drag drag
# —— —— —— —— —— 

echo Enabling three finger drag
echo
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -integer 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -integer 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -integer 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -integer 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -integer 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -integer 0
defaults write NSGlobalDomain com.apple.trackpad.threeFingerSwipeGesture -integer 1

# —— —— —— —— —— 
# Enable zooming
# —— —— —— —— —— 

echo Enabling zoom
echo
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 30000
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool false

# ===== ===== ===== ===== =====
# Menus
# ===== ===== ===== ===== =====

# —— —— —— —— —— 
# Setting menus as opened by default
# —— —— —— —— —— 

echo Setting menus as opened by default
echo
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# —— —— —— —— —— 
# Setting look of battery and clock
# —— —— —— —— —— 

echo Setting look of battery and clock
echo
defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM - dd.MM HH:mm:ss"
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# ===== ===== ===== ===== =====
# Safari
# ===== ===== ===== ===== =====

# —— —— —— —— ——
# Dev menu
# —— —— —— —— ——

echo Setting the dev menu for safari
echo
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# —— —— —— —— ——
# Debug menu
# —— —— —— —— ——

echo Setting the debug menu for safari
echo
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# —— —— —— —— ——
# Disable information sharing
# —— —— —— —— ——

echo Setting the debug menu for safari
echo
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# ===== ===== ===== ===== =====
# Other
# ===== ===== ===== ===== =====

# —— —— —— —— ——
# Save to disk by default
# —— —— —— —— ——

echo Setting save to disk as default
echo
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# —— —— —— —— ——
# Screenshot settings
# —— —— —— —— ——

echo Setting screenshot settings
echo
defaults write com.apple.screencapture location -string "$HOME/Desktop"
defaults write com.apple.screencapture type -string "png"

# —— —— —— —— ——
# Snap to grid and column view
# —— —— —— —— ——

echo Enabling snap to grid
echo
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

echo
echo Done setting up defaults!
echo —-—===——-
echo


