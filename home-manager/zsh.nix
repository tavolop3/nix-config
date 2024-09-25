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
      rb = "sudo nixos-rebuild switch --flake ${flakeDir}/nixos/.";
      upd = "nix flake update ${flakeDir}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

      hms = "home-manager switch --flake ${flakeDir}";

      sconf = "nvim ${flakeDir}/nixos/configuration.nix";
      conf = "nvim ${flakeDir}/home-manager/home.nix";
      #pkgs = "nvim ${flakeDir}/nixos/packages.nix";

      ll = "ls -l";
      v = "nvim";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git"  "sudo" "thefuck" ]; #doble esc para agregar sudo al comando y fuck para corregir comando
      theme = "robbyrussell";
    };
  };
}
