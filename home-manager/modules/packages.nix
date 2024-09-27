{ pkgs, ... }:

{
  home.packages = with pkgs; [
    google-chrome
    firefox
    alacritty
    keepassxc
    vesktop #share screen

    #coding stuff
    vscode
    gcc
    eclipses.eclipse-sdk

    #cli utils
    neofetch
    btop
  ];
}
