{
  home = {
    username = "tao";
    homeDirectory = "/home/tao";
    stateVersion = "24.05";
    
    sessionVariables = {
      TERMINAL = "alacritty";
    };
  };

  imports = [
    ./modules/bundle.nix
  ];

  nixpkgs.config.allowUnfree = true;

  programs.home-manager.enable = true;
}
