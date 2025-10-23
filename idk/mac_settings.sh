#!/bin/bash

COMPUTERNAME="rasmusfoldberg"
LOCALHOSTNAME='rfb'

osascript -e 'tell application "System Preferences" to quit'



###############################################################################
# General UI/UX                                                               #
###############################################################################

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName $COMPUTERNAME
sudo scutil --set HostName $LOCALHOSTNAME
sudo scutil --set LocalHostName $LOCALHOSTNAME
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $LOCALHOSTNAME



# Hide remaining battery time; show percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.menuextra.battery ShowTime -string "NO"

# Always use expanded save dialog:
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool false
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool false




###############################################################################
# Trackpad                                                                    #
###############################################################################


# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Hastighed
defaults write -g com.apple.trackpad.scaling -float 1.5

# 3 finger træk
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true	




###############################################################################
# Dock                                                                        #
###############################################################################


#* Sætter størrelse på docken
defaults write com.apple.dock tilesize -integer 48

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Show Dock instantly:
defaults write com.apple.dock autohide-delay -float 0




###############################################################################
# Finder                                                                      #
###############################################################################

# Keep folders on top when sorting by name:
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Do not show status bar in Finder:
defaults write com.apple.finder ShowStatusBar -bool false

# Show file extensions in Finder:
defaults write NSGlobalDomain AppleShowAllExtensions -bool false

# Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Show Library folder
chflags nohidden ~/Library




###############################################################################
# Safari                                                                      #
###############################################################################

# Privacy: don’t send search queries to Apple
# defaults write com.apple.Safari UniversalSearchEnabled -bool false
# defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Improve Safari security
# defaults write com.apple.Safari \
#   com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled \
#   -bool false
# defaults write com.apple.Safari \
#   com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabledForLocalFiles \
#   -bool false




###############################################################################
# Maccy - Clipboard manager                                                   #
###############################################################################

defaults write org.p0deje.Maccy pasteByDefault true
defaults write org.p0deje.Maccy historySize 20


###############################################################################
# Hazeover - Distraction dimmer                                               #
###############################################################################

# defaults write com.pointum.hazeover ShortcutToggle -data {length = 135, bytes = 0x62706c69 73743030 d4010203 04050607 ... 00000000 0000005b }
echo '      ❗ Hazeover mangler licens nøgle og ShortcutToggle: SHIFT + CMD + > \n'
defaults write com.pointum.hazeover MultiFocus -bool true
defaults write com.pointum.hazeover Animation -float 0.2
defaults write com.pointum.hazeover SUHasLaunchedBefore -bool true
defaults write com.pointum.hazeover SUAutomaticallyUpdate -bool true
defaults write com.pointum.hazeover Intensity -float 50


###############################################################################
# Nightowl - Dark / Light planner                                             #
###############################################################################

defaults write com.fuekiin.Nightowl disableAppAlert -bool true
defaults write com.fuekiin.Nightowl playSound -float 1
defaults write com.fuekiin.Nightowl darkTime -float 1.595.268.000
defaults write com.fuekiin.Nightowl lightTime -float 1.595.221.200
defaults write com.fuekiin.Nightowl 'already started' -float 1
defaults write com.fuekiin.Nightowl trackSun -float 0
defaults write com.fuekiin.Nightowl checkUpdates -float 1
