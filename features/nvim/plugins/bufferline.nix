{
  plugins.bufferline = {
    enable = true;

    settings = {
      options = {
        offsets = [{
          filetype = "NvimTree";
          text = "File Explorer";
          highlight = "Directory";
          text_align = "left";
        }];
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>b";
      action = "<cmd>enew<CR>";
      options = { desc = "buffer new"; };
    }
    {
      mode = "n";
      key = "<tab>";
      action = ":BufferLineCycleNext<CR>";
      options = { desc = "buffer next"; };
    }
    {
      mode = "n";
      key = "<S-tab>";
      action = ":BufferLineCyclePrev<CR>";
      options = { desc = "buffer prev"; };
    }
    {
      mode = "n";
      key = "<leader>x";
      action = ":bdelete<CR>";
      options = { desc = "buffer close"; };
    }
  ];
}
