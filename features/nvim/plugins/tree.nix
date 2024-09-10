{
  plugins.nvim-tree = {
    enable = true;
    filters = { dotfiles = false; };
    disableNetrw = true;
    hijackCursor = true;
    syncRootWithCwd = true;
    updateFocusedFile = {
      enable = true;
      updateRoot = false;
    };
    view = {
      width = 30;
      preserveWindowProportions = true;
    };
    renderer = {
      rootFolderLabel = false;
      highlightGit = true;
      indentMarkers = { enable = true; };
      icons = {
        glyphs = {
          default = "󰈚";
          folder = {
            default = "";
            empty = "";
            emptyOpen = "";
            open = "";
            symlink = "";
          };
          git = { unmerged = ""; };
        };
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<C-n>";
      action = "<cmd>NvimTreeToggle<CR>";
      options = { desc = "nvimtree toggle window"; };
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>NvimTreeFocus<CR>";
      options = { desc = "nvimtree focus window"; };
    }
  ];

}
