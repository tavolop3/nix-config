{ pkgs, ... }:

{
  home.packages = with pkgs; [
    google-chrome
    firefox
    alacritty
    keepassxc
    ulauncher

    #coding stuff
    vscode
    git
    gcc
    eclipses.eclipse-sdk

    #cli utils
    neofetch
    btop
  ];
}
