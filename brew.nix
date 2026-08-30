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
    taps = [
      #"sikarugir-app/sikarugir"
      "pear-devs/pear"
    ];
    casks = [
      "equibop"
      "blender"
      "pear-devs/pear/pear-desktop"
      "ghostty"
      "obs"
      "steam"
      "zen"
      "telegram"
      "temurin@11"
      "prismlauncher"
      "roblox"
      "spotify"
      "nvidia-geforce-now"
      "obsidian"
      "db-browser-for-sqlite@nightly"
      "utm"
      "hot"
      "krita"
      "vlc"
      "blockbench"
      "prefs-editor"
      "android-platform-tools"
      "docker-desktop"
      "vscodium"
    ];

    brews = [
      "btop"
      "eza"
      "fish"
      "fastfetch"
      "openjdk"
      "libevent"
      "utf8proc"
      "ncurses"
      "rust"
      "pnpm"
    ];

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "uninstall";
    };
  };

  system.primaryUser = "s1ndl3s";
}
