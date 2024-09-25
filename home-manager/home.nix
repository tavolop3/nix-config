{ config, pkgs, ... }:

{
  home = {
    username = "tao";
    homeDirectory = "/home/tao";
    stateVersion = "24.05";
    
    packages = with pkgs; [
    	alacritty
    	keepassxc

	#coding stuff
	gcc
	jdk
	eclipses.eclipse-sdk

	#cli utils
    	neofetch
	btop
	thefuck
    ];

    sessionVariables = {
    	TERMINAL = "alacritty";
    };
  };

  imports = [
	./zsh.nix #este va aca, el resto en modules
	./git.nix
	./alacritty.nix
  ];

  nixpkgs.config.allowUnfree = true;

  programs.home-manager.enable = true;
}
