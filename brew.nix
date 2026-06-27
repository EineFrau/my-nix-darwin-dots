{
  config,
  pkgs,
  ...
}: {
  nix-homebrew = {
    enable = true;
    enableRosetta = true;
    autoMigrate = true;
    mutableTaps = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableZshIntegration = true;
    user = "s1ndl3s";
  };

  homebrew = {
    enable = true;
    enableFishIntegration = true;
    casks = [
      "ghostty"
      "obs"
      "steam"
      "zen"
      "telegram"
      "yt-music"
      "sikarugir"
    ];

    brews = [
      "btop"
      "eza"
      "fish"
      "fastfetch"
    ];

    /*
      onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "none";
    };
    */
  };

  system.primaryUser = "s1ndl3s";
}
