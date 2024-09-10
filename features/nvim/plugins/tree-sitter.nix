{
  plugins.treesitter = {
    enable = true;
    settings = {
      ensure_installed = [
        "vim"
        "lua"
        "vimdoc"
        "html"
        "css"
      ];

      highlight = {
        enable = true;
        use_languagetree = true;
      };

      indent = {
        enable = true;
      };
    };
  };
}
