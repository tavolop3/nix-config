{ pkgs, ... }:

{
  home.packages = with pkgs; [
    google-chrome
    firefox
    alacritty
    keepassxc
    discord

    #coding stuff
    vscode
    gcc
    eclipses.eclipse-sdk

    #cli utils
    neofetch
    btop
  ];
}
