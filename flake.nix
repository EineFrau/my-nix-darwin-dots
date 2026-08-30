{
  inputs = {
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    nvf = {
      url = "github:notashelf/nvf";
    };
    nix-homebrew = {
      url = "github:zhaofengli/nix-homebrew";
      inputs.brew-src.url = "github:Homebrew/brew";
    };
    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };
  };

  outputs = {
    self,
    nix-darwin,
    nixpkgs,
    home-manager,
    nix-homebrew,
    homebrew-core,
    nvf,
    homebrew-cask,
    ...
  }: let
    system = "aarch64-darwin";
  in {
    darwinConfigurations."MacBook-Air-von-Rene" = nix-darwin.lib.darwinSystem {
      inherit system;
      inputs = {inherit nvf;};
      modules = [
        nix-homebrew.darwinModules.nix-homebrew
        home-manager.darwinModules.home-manager
        ./configuration.nix
      ];
    };
  };
}
