{pkgs, ...}: {
  programs.nvf.settings.vim = {
    statusline.lualine.enable = true;
    mini.tabline.enable = true;
    tabline.nvimBufferline = {
      enable = true;
    };
    keymaps = [
      {
        key = "<Tab>";
        mode = "n";
        silent = true;
        action = "<cmd>BufferLineCycleNext<CR>";
      }
      {
        key = "<S-Tab>";
        mode = "n";
        silent = true;
        action = "<cmd>BufferLineCyclePrev<CR>";
      }
    ];
  };
}
