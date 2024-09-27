{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        flakeDir = "~/nix-config";
      in {
      rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
      upd = "sudo nix flake update ${flakeDir}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

      hms = "home-manager switch --flake ${flakeDir}";

      sconf = "nvim ${flakeDir}/nixos/configuration.nix";
      conf = "nvim ${flakeDir}/home-manager/home.nix";
      vconf = "nvim ${flakeDir}/home-manager/modules/nixvim/nixvim.nix";
      pkgs = "nvim ${flakeDir}/home-manager/modules/packages.nix";

      ll = "ls -l";
      v = "nvim";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };
  };
}
