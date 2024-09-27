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
    gcc
    eclipses.eclipse-sdk

    #cli utils
    neofetch
    btop
  ];
}
