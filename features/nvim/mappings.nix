{
  keymaps = [
    {
      mode = "n";
      key = "<leader>/";
      action = "gcc";
      options = {
        desc = "Toggle Comment";
        remap = true;
      };
    }
    {
      mode = "v";
      key = "<leader>/";
      action = "gc";
      options = {
        desc = "Toggle Comment";
        remap = true;
      };
    }
    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<CR>";
      options = { desc = "Save file"; };
    }

    # General
    {
      mode = "i";
      key = "<C-b>";
      action = "<ESC>^i";
      options = { desc = "Move begining of the line"; };
    }
    {
      mode = "i";
      key = "<C-e>";
      action = "<End>";
      options = { desc = "Move end of the line"; };
    }
    {
      mode = "i";
      key = "<C-h>";
      action = "<Left>";
      options = { desc = "Move left"; };
    }
    {
      mode = "i";
      key = "<C-l>";
      action = "<Right>";
      options = { desc = "Move right"; };
    }
    {
      mode = "i";
      key = "<C-j>";
      action = "<Down>";
      options = { desc = "Move donw"; };
    }
    {
      mode = "i";
      key = "<C-k>";
      action = "<Up>";
      options = { desc = "Move up"; };
    }
  ];
}
