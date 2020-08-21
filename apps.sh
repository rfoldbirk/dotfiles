#!/bin/bash


# Brew installation
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo '      🍞 Installerer brew\n'
    /bin/bash -c '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)'
fi

brew install 'mas' > /dev/null 2>&1
brew install 'node' > /dev/null 2>&1
brew install 'nvm' > /dev/null 2>&1
brew install 'tree' > /dev/null 2>&1
brew install 'curl' > /dev/null 2>&1
brew install 'cmake' > /dev/null 2>&1

brew cask install "font-consolas-for-powerline" > /dev/null 2>&1
brew cask install "font-fira-code" > /dev/null 2>&1
brew cask install "font-roboto-mono" > /dev/null 2>&1
brew cask install "font-roboto-mono-for-powerline" > /dev/null 2>&1

# Browsers
brew cask install 'safari-technology-preview' > /dev/null 2>&1
brew cask install 'brave-browser' > /dev/null 2>&1
brew cask install 'google-chrome' > /dev/null 2>&1
#// brew cask install 'firefox' > /dev/null 2>&1

# Music
brew cask install 'spotify' > /dev/null 2>&1

# Text editors and IDE's
brew cask install 'visual-studio-code' > /dev/null 2>&1
brew cask install 'sublime-text' > /dev/null 2>&1
brew cask install 'iterm2' > /dev/null 2>&1
mas install 497799835 > /dev/null 2>&1 # xcode

# Database
brew cask install 'tableplus' > /dev/null 2>&1
brew cask install 'the-unarchiver' > /dev/null 2>&1

# Kode halløj
brew install 'speedtest-cli' > /dev/null 2>&1
brew cask install 'sublime-merge' > /dev/null 2>&1
brew cask install 'hammerspoon' > /dev/null 2>&1
brew cask install 'postman' > /dev/null 2>&1
mas install 1518425043 > /dev/null 2>&1 # boop
mas install 1176074088 > /dev/null 2>&1 # termius

# Open in...
brew cask install 'openinterminal-lite' > /dev/null 2>&1
brew cask install 'openineditor-lite' > /dev/null 2>&1

# Trello
mas install 1278508951 > /dev/null 2>&1 # trello

# Kommunikation
brew cask install 'discord' > /dev/null 2>&1
mas install 1176895641 > /dev/null 2>&1 # spark
mas install 1480068668 > /dev/null 2>&1 # messenger

# Skole Halløj
brew cask install 'microsoft-word' > /dev/null 2>&1
brew cask install 'microsoft-powerpoint' > /dev/null 2>&1
brew cask install 'microsoft-excel' > /dev/null 2>&1
brew cask install 'google-backup-and-sync' > /dev/null 2>&1
brew cask install 'agenda' > /dev/null 2>&1
mas install 409183694 > /dev/null 2>&1 # keynote
mas install 409203825 > /dev/null 2>&1 # numbers
mas install 409201541 > /dev/null 2>&1 # pages


# Dejlige små programmer
brew cask install 'nightowl' > /dev/null 2>&1
brew cask install 'maccy' > /dev/null 2>&1 # clipboard manager
brew cask install 'enpass' > /dev/null 2>&1 # et værktøj, som kan
brew cask install 'flux' > /dev/null 2>&1 # behøver jeg forklare
brew cask install 'enjoyable' > /dev/null 2>&1 # controller mapper
mas install 836505650 > /dev/null 2>&1 # battery monitor
mas install 1013897218 > /dev/null 2>&1 # cleaner app
mas install 430798174 > /dev/null 2>&1 # hazeover
mas install 935235287 > /dev/null 2>&1 # encrypto
mas install 1287239339 > /dev/null 2>&1 # colorslurp
mas install 1421915518 > /dev/null 2>&1 # piper