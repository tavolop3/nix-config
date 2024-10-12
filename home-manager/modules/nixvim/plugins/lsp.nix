{
  programs.nixvim.plugins = {

    treesitter = {
      enable = true;
      nixvimInjections = true;
      folding = true;
      indent = true;
    };

    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
        # Set to false if you have an `updatetime` of ~100.
        clearOnCursorMove = false;
      };
    };

    hmts.enable = true;

    lsp = {
      enable = true;
      servers = {
        nil-ls.enable = true; #nix
        clangd.enable = true; #c, c++
        pyright.enable = true; #python
        bashls.enable = true; # Bash
        vuels.enable = true; # Vue
        html.enable = true; # HTML
        cssls.enable = true; # CSS
        java-language-server.enable = true; # Java
      };
    };

    lsp-format = {
      enable = true;
    };
  };
}
