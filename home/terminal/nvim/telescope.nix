{pkgs, ...}: {
  programs.nvf.settings.vim = {
    telescope = {
      enable = true;
    };

    keymaps = [
      {
        mode = "n";
        key = "<C-p>";
        silent = true;
        action = "<cmd>lua require'telescope.builtin'.find_files()<CR>";
      }
      {
        mode = "n";
        key = "<C-l>";
        silent = true;
        action = "<cmd>lua require'telescope.builtin'.live_grep()<CR>";
      }
    ];
  };
}
