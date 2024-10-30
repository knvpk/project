{
  plugins.lazygit = {
    enable = true;
  };

	keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = ":term lazygit<CR>";
      options = {
        desc = "Lazy Git";
        remap = true;
      };
    }
	];
}
