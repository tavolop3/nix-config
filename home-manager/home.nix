{ config, pkgs, ... }:

{
  home = {
    username = "tao";
    homeDirectory = "/home/tao";
    stateVersion = "24.05";
    
    packages = with pkgs; [
    	keepassxc

	#coding stuff
	gcc

	#cli utils
    	neofetch
	btop
	thefuck
    ];
  };

  imports = [
	./zsh.nix #este va aca, el resto en modules
	./git.nix
  ];

  programs.home-manager.enable = true;
}
