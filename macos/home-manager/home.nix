{ config, pkgs, ... }:

{
  home.username = "rasmusfoldberg";
  home.homeDirectory = "/Users/rasmusfoldberg";

  home.stateVersion = "24.05"; # ← ADD THIS LINE

  home.packages = with pkgs; [
    helix
    btop
    home-manager
    zellij
    ripgrep
    bat
    lazygit
    nginx
    nodejs_24
    yt-dlp
    ffmpeg
  ];
}
