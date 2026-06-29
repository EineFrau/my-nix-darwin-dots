{pkgs, ...}: {
  programs.nvf.settings.vim.minimap = {
    minimap-vim = {
      enable = true;
    };
    codewindow = {
      enable = true;
    };
  };
}
