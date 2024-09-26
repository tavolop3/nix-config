{

  imports = [
    ./opts.nix
    ./plugins/plugins-bundle.nix
    #./keymaps.nix
    #./autocmds.nix
  ];

  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin.enable = true;

    plugins.lualine.enable = true;
  };
}
