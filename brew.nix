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
      "sikarugir-app/sikarugir"
    ];
    casks = [
      "ghostty"
      "obs"
      "steam"
      "zen"
      "telegram"
      "yt-music"
      "sikarugir"
      "minecraft"
      "equibop"
      "figma"
      "temurin@11"
      "zerotier-one"
      "prismlauncher"
      "roblox"
      "visual-studio-code"
      "spotify"
      "nvidia-geforce-now"
      "obsidian"
      "db-browser-for-sqlite@nightly"
      "utm"
      "robloxstudio"
      "hot"
      "krita"
      "logmein-hamachi"
      "vlc"
      "blockbench"
      "modrinth"
      "prefs-editor"
      "android-platform-tools"
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
