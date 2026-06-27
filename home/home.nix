{ config, pkgs, inputs, ... }:
{
  home-manager.users.s1ndl3s = {
    imports = [
      inputs.nvf.homeManagerModules.nvf
      ./terminal/terminalImports.nix
    ];

    home.username = "s1ndl3s";
    home.homeDirectory = "/Users/s1ndl3s";
    home.stateVersion = "24.05";

    home.packages = with pkgs; [
      git
      gh
      nodejs
      yarn
      python3
      pipx
    ];

    programs.fish.enable = true;

    home.sessionVariables = {
      EDITOR = "nvim";
    };

    accounts.calendar.basePath = "/Users/s1ndl3s/.calendar";
    accounts.contact.basePath = "/Users/s1ndl3s/.contacts";
    accounts.email.maildirBasePath = "/Users/s1ndl3s/Maildir";
  };
}
