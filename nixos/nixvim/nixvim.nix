{

  imports = [
    ./opts.nix
    ./plugins/plugins-bundle.nix
    ./keymaps.nix
  ];

  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin.enable = true;
  };
}
