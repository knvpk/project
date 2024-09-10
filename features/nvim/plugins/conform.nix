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
      };

      format_on_save = {
        timeout_ms = 500;
        lsp_fallback = true;
      };
    };
  };
}
