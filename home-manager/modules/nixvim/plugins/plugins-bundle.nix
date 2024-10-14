{
  imports = [
    ./lualine.nix
    ./neotree.nix
    ./mini.nix
    ./comment.nix
    ./floaterm.nix
    ./telescope.nix
    ./barbar.nix
    ./nix.nix
    ./lsp.nix
    ./cmp.nix
    ./lazy.nix
    ./harpoon.nix
  ];

  programs.nixvim.plugins = {
    undotree = {
      enable = true;
      settings = {
        autoOpenDiff = true;
        focusOnToggle = true;
      };
    };

    # Dashboard
    alpha = {
      enable = true;
      theme = "dashboard";
    };

    lazygit.enable = true;

    persistence.enable = true;
  };
}
