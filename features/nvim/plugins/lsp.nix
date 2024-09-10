{
  plugins.lsp = {
    enable = true;

    keymaps = {
      extra = [
        {
          key = "<leader>ca";
          action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
          options = {
            desc = "Code actions";
            silent = true;
          };
        }
        {
          key = "gD";
          action = "<cmd>lua vim.lsp.buf.declaration()<CR>";
          options = {
            desc = "Go to declaration";
            silent = true;
          };
        }
        {
          key = "gd";
          action = "<cmd>lua vim.lsp.buf.definition()<CR>";
          options = {
            desc = "Go to Definition";
            silent = true;
          };
        }
        {
          key = "gi";
          action = "<cmd>lua vim.lsp.buf.implementation()<CR>";
          options = {
            desc = "Go to implementation";
            silent = true;
          };
        }
        {
          key = "<leader>sh";
          action = "<cmd>lua vim.lsp.buf.signature_help()<CR>";
          options = {
            desc = "Show signature help";
            silent = true;
          };
        }
        {
          key = "<leader>wa";
          action = "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>";
          options = {
            desc = "Add workspace folder";
            silent = true;
          };
        }
        {
          key = "<leader>wr";
          action = "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>";
          options = {
            desc = "Remove workspace folder";
            silent = true;
          };
        }
        {
          key = "<leader>D";
          action = "<cmd>lua vim.lsp.buf.type_definition()<CR>";
          options = {
            desc = "Go to type definition";
            silent = true;
          };
        }
        {
          key = "<leader>K";
          action = "<cmd>lua vim.lsp.buf.hover()<CR>";
          options = {
            desc = "Hover";
            silent = true;
          };
        }
        {
          key = "<leader>gr";
          action = "<cmd>lua vim.lsp.buf.references()<CR>";
          options = {
            desc = "References";
            silent = true;
          };
        }
        {
          key = "<leader>rn";
          action = "<cmd>lua vim.lsp.buf.rename()<CR>";
          options = {
            desc = "References";
            silent = true;
          };
        }
        {
          key = "<leader>dp";
          action = "<cmd>lua vim.diagnostic.goto_prev()<CR>";
          options = {
            desc = "Go to prev diagnostic";
            silent = true;
          };
        }
        {
          key = "<leader>dn";
          action = "<cmd>lua vim.diagnostic.goto_next()<CR>";
          options = {
            desc = "Go to next diagnostic";
            silent = true;
          };
        }
        {
          key = "<leader>f";
          action = "<cmd>lua vim.lsp.buf.formatting()<CR>";
          options = {
            desc = "Do format";
            silent = true;
          };
        }
      ];
    };

    servers = {
      lua-ls = { enable = true; };
      tsserver = { enable = true; };
      nixd = {
        enable = true;
        cmd = [ "nixd" ];
        filetypes = [ "nix" ];

        settings = { formatting = { cmd = "nixfmt"; }; };
      };
    };
  };
}
