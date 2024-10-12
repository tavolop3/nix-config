{
  programs.nixvim.plugins.harpoon = {
    enable = true;
    enableTelescope = true;
    keymapsSilent = true;
    keymaps = {
      addFile = "<leader>ha";
      toggleQuickMenu = "<C-e>";
      navFile = {
        "1" = "<leader>h1";
        "2" = "<leader>h2";
        "3" = "<leader>h3";
        "4" = "<leader>h4";
      };
    };
  };
}
