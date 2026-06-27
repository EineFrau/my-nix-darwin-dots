{ config, pkgs, ... }: {
  nix-homebrew = {
    enable = true;
    autoMigrate = true;
    mutableTaps = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableZshIntegration = true;
    user = "s1ndl3s";
  };
}