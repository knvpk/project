{ config, pkgs, ... }: {
  plugins.conform-nvim = {
    enable = true;
    package = pkgs.vimPlugins.conform-nvim;
    settings = {
      formatters_by_ft = {
        lua = [ "stylua" ];
        css = [ "prettier" ];
        html = [ "prettier" ];
        # nix = [ "nixfmt" ];
        yaml = [ "prettier" ];
        python = [ "black" "autopep8" ];
      };

      format_on_save = {
        timeout_ms = 500;
        lsp_fallback = true;
      };
    };
  };
}
