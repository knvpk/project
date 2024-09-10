{
  autoCmd = [
    {
      pattern = "*";
      event = "VimEnter";
      desc = "Open default files";
      # require('nvim-tree.api').tree.open() vim.cmd('edit flake.nix')
      # create_custom_dashboard()
      callback = { __raw = "function()   require('alpha').start(true) end"; };
    }
    # {
    #   pattern = "*";
    #   event = "VimEnter";
    #   desc = "Open tree";
    #   callback = { __raw = "require('nvim-tree.api').tree.open()"; };
    # }
  ];
}
