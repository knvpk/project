{ config, pkgs, ... }: {
  plugins.telescope = {
    enable = true;

    iconsPackage = pkgs.vimPlugins.nvim-web-devicons;

    settings = {
      defaults = {
        prompt_prefix = "   ";
        selection_caret = " ";
        entry_prefix = " ";
        sorting_strategy = "ascending";
        layout_config = {
          horizontal = {
            prompt_position = "top";
            preview_width = 0.55;
          };
          width = 0.87;
          height = 0.8;
        };
        mappings = {
          n = { "q" = { __raw = "require ('telescope.actions').close"; }; };
        };

        extensions = { fzf-native = { enable = true; }; };
      };
    };

    # TODO:: Figureout these
    enabledExtensions = [
      # "themes"
      # "terms"
    ];

    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        mode = "n";
        options = { desc = "telescope find files"; };
      };

      "<leader>fw" = {
        mode = "n";

        action = "live_grep";
        options = { desc = "telescope live grep"; };
      };
      "<leader>fb" = {
        mode = "n";

        action = "buffers";
        options = { desc = "telescope find buffers"; };
      };
      "<leader>fh" = {
        mode = "n";

        action = "help_tags";
        options = { desc = "telescope help page"; };
      };
      "<leader>ma" = {
        mode = "n";

        action = "marks";
        options = { desc = "telescope find marks"; };
      };
      "<leader>fo" = {
        mode = "n";

        action = "oldfiles";
        options = { desc = "telescope find oldfiles"; };
      };
      "<leader>fz" = {
        mode = "n";

        action = "current_buffer_fuzzy_find";
        options = { desc = "telescope find in current buffer"; };
      };
      "<leader>cm" = {
        mode = "n";

        action = "git_commits";
        options = { desc = "telescope git commits"; };
      };
      "<leader>gt" = {
        mode = "n";
        action = "git_status";
        options = { desc = "telescope git status"; };
      };
      # "<leader>pt" = {
      #   mode = "n";
      #   
      #   action = "terms";
      #   options = {
      #     desc = "telescope pick hidden term";
      #   };
      # };
      # "<leader>th" = {
      #   mode = "n";
      #   
      #   action = "themes";
      #   options = {
      #     desc = "telescope nvchad themes";
      #   };
      # }

      "<leader>fa" = {
        mode = "n";
        action = "find_files follow=true no_ignore=true hidden=true";
        options = { desc = "telescope find all files"; };
      };
    };
  };

  extraPackages = with pkgs; [ ripgrep ];
}
