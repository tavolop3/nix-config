{ pkgs, ... }:

{
  home.packages = with pkgs; [
    google-chrome
    firefox
    alacritty
    keepassxc
    vesktop #discord share screen
    okular
    speedcrunch

    #coding stuff
    vscode
    eclipses.eclipse-sdk
    jdk
    ripgrep
    direnv
    gcc
    # vagrant

    #cli utils
    neofetch
    btop
    tldr

    #cracking
    # aircrack-ng
    # wifite2
  ];
}
