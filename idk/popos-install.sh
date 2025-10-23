# Installerer opdateringer
sudo apt update -y
sudo flatpak update -y
sudo apt upgrade -y
sudo apt install snapd -y

# Diverse sprog
sudo apt install -y language-pack-da
sudo apt install -y mozc-utils-gui
sudo apt install -y fonts-noto-ui-core
sudo apt install -y wdanish
sudo apt install -y language-pack-gnome-da
sudo apt install -y fonts-noto-core
sudo apt install -y firefox-locale-da
sudo apt install -y libreoffice-help-da
sudo apt install -y gnome-getting-started-docs-da
sudo apt install -y mythes-da
sudo apt install -y libreoffice-l10n-da
sudo apt install -y hyphen-da
sudo apt install -y gnome-user-docs-da
sudo apt install -y hunspell-da


# Sæt zsh som default...
sudo apt install zsh -y
chsh -s $(which zsh)


# Nodejs & npm
sudo apt install nodejs -y
sudo apt install npm -y



# NeoVim & Alacritty & zsh indstillinger
sudo apt install neovim -y
sudo apt install alacritty -y



# Gnome Shell Tweaks
sudo apt install gnome-tweaks -y
sudo apt install chrome-gnome-shell -y

#sudo systemctl restart gdm
gsettings set org.gnome.shell disable-user-extensions false

# Gnome Shell indstillinger :)
#sudo apt install dconf-editor -y
#dconf load / < ./gnome-shell/saved_settings.dconf