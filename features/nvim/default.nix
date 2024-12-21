{ lib, pkgs, ... }:

{
  imports = [

    # Plugins
    ./plugins/alpha.nix
    ./plugins/auto-pair.nix
    ./plugins/auto-session.nix
    ./plugins/bufferline.nix
    ./plugins/cmp.nix
    # ./plugins/cmp-ai.nix
    ./plugins/conform.nix
    ./plugins/gitsigns.nix
    ./plugins/lazy_git.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/telescope.nix
    ./plugins/tree-sitter.nix
    ./plugins/tree.nix
    ./plugins/web_devicons.nix
    ./plugins/which_key.nix
    ./plugins/extras.nix

    ## Mappings
    ./mappings.nix

    ## Auto commands
    ./auto_cmds.nix
  ];

  globals.mapleader = " ";
  opts = { number = true; shiftwidth = 2;   tabstop=2;  };

	clipboard = {
		providers = {
		# 	xclip = {
		# 		enable = true;
		# 	};
			# wl-copy = {
			# 	enable = true;
			# };
		};
	};

  colorschemes.onedark = { enable = true; };

  extraConfigLua = builtins.readFile ./lua/init.lua;
  extraConfigLuaPre = builtins.readFile ./lua/pre.lua;
  extraConfigLuaPost = builtins.readFile ./lua/post.lua;

}
