{ config, pkgs, ... }:

{
  home.username = "rasmusfoldberg";
  home.homeDirectory = "/Users/rasmusfoldberg";

  home.stateVersion = "24.05"; # ← ADD THIS LINE

  home.packages = with pkgs; [
    # nix
    home-manager
    
    # languages
    go
    nodejs_24

    # language servers
    jdt-language-server
    gopls

    # cli tools
    helix
    neovim
    zellij
    ripgrep
    bat
    eza # better ls
    fzf # fuzzy finder
    zoxide # cd
    fd # find
    lazygit
    nmap

    # tools
    typst
    tinymist
    nginx
    raylib
    rPackages.pkgconfig

    # other dependencies
    xz
    yt-dlp
    ffmpeg
    neofetch
  ];
}
