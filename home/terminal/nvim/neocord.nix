{pkgs, ...}: {
  programs.nvf.settings.vim.presence.neocord = {
    enable = true;
    setupOpts.enable_line_number = true;
  };
}
