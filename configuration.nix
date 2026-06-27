{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./imports.nix
    ./home/home.nix
  ];

  users.users.s1ndl3s = {
    name = "s1ndl3s";
    home = "/Users/s1ndl3s";
    shell = "/opt/homebrew/bin/fish";
  };

  environment.systemPackages = with pkgs; [
    fish
  ];

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  programs.fish.enable = true;

  system.stateVersion = 7;
}
