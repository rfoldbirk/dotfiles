sudo -v
sadsddd
sudo pacman -Syu --noconfirm


sudo pacman -S xdotool alacritty neovim nodejs npm nvm nmap --noconfirm
sudo pacman -S virt-manager uluancher discord --noconfirm

pamac build spotify

# Sublime Text 3
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg

echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

sudo pacman -Syu sublime-text sublime-merge --noconfirm



sh ./common.sh
