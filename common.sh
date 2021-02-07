# NeoVim & Alacritty config

mkdir $HOME/.config
mkdir $HOME/.config/nvim
mkdir $HOME/.config/alacritty

cp -R ./nvim $HOME/.config/
cp -R ./alacritty.yml $HOME/.config/alacritty/

# Typewritten
mkdir -p "$HOME/.zsh"
git clone https://github.com/reobin/typewritten.git "$HOME/.zsh/typewritten"

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# zsh indstillinger
cp ./zsh $HOME/.zshrc

# JetBrains Mono Font
mkdir $HOME/.local/share/fonts
cp -R ./Fonts/* $HOME/.local/share/fonts/

mkdir $HOME/Programmering
