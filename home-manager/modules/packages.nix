{ pkgs, ... }:

{
  home.packages = with pkgs; [
    google-chrome
    firefox
    alacritty
    keepassxc
    vesktop #discord share screen
    okular

    #coding stuff
    vscode
    gcc
    eclipses.eclipse-sdk

    #cli utils
    neofetch
    btop
  ];
}
