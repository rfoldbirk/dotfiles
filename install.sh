#!/bin/bash

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


clear
echo '\n\n'


echo '      🎁 Installerer apps\n'
sh ./apps.sh

echo '      🛠  Konfigurerer din Mac. Hold godt fast...\n'
sh ./settings.sh


# zshrc
rm ~/.zshrc
cp ./iterm/zsh ~/.zshrc

# iTerm2 automatic theme switcher
mkdir ~/Library/ApplicationSupport/iTerm2/Scripts/AutoLaunch
cp ./iterm/switch_automatic.py ~/Library/ApplicationSupport/iTerm2/Scripts/AutoLaunch

# iTerm2 plist
rm ~/Library/Preferences/com.googlecode.iterm2.plist
cp ./iterm/iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

# vscode
sh ./vscode/install.sh

#! Genstart
#!echo '      ––––––––––––––––––––––––––––––––––––––––––\n'
echo '      😌 Genstarter Finder & Dock\n'
killall Finder
killall Dock

source ~/

echo '      🦀  iTerm2 er klar\n'

# clear
echo '\n\n\n'
echo '      🙏 Din Mac er nu klar til brug 🙏'
echo '         Du bør genstarte din Macbook'
echo '\n\n'