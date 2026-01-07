#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
##  General UI/UX                                                            ##
###############################################################################

# Disable smart quotes by default because code.
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes by default because code.
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable the sudden motion sensor as it's not useful for SSDs
sudo pmset -a sms 0

###############################################################################
##  Screen                                                                   ##
###############################################################################

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

###############################################################################
##  Finder                                                                   ##
###############################################################################

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

###############################################################################
##  Dock                                                                     ##
###############################################################################

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Set the icon size of Dock items to 45 points
defaults write com.apple.dock tilesize -int 45

# Disable automatic rearranging of spaces
defaults write com.apple.dock mru-spaces -bool false

# Restart the dock for changes to take effect
killall Dock
