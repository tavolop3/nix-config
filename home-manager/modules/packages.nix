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
    ripgrep
    # vagrant

    #cli utils
    neofetch
    btop
  ];
}
