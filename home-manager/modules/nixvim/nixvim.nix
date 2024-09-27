{
  imports = [
    ./opts.nix
    ./keymaps.nix
    ./plugins/plugins-bundle.nix
  ];

  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin.enable = true;
  };
}
