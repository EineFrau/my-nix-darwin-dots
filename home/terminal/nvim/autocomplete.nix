{pkgs, ...}: {
  programs.nvf.settings.vim = {
    autocomplete.nvim-cmp = {
      enable = true;

      sources = {
        "nvim_lsp" = "[LSP]";
        "path" = "[Path]";
        "buffer" = "[Buffer]";
        "luasnip" = "[Snippets]";
      };
    };

    keymaps = [
      {
        mode = "i";
        key = "<C-Space>";
        silent = true;
        action = "<cmd>lua require'cmp'.complete()<CR>"; # Trigger completion
      }
      {
        mode = "i";
        key = "<C-n>";
        silent = true;
        action = "<cmd>lua require'cmp'.select_next_item()<CR>"; # Navigate to the next item
      }
      {
        mode = "i";
        key = "<C-p>";
        silent = true;
        action = "<cmd>lua require'cmp'.select_prev_item()<CR>"; # Navigate to the previous item
      }
      {
        mode = "i";
        key = "<C-e>";
        silent = true;
        action = "<cmd>lua require'cmp'.close()<CR>"; # Close the completion menu
      }
      {
        mode = "i";
        key = "<C-c>";
        silent = true;
        action = "<cmd>lua require'cmp'.confirm({ select = true })<CR>"; # Confirm the selected completion
      }
    ];
  };
}

