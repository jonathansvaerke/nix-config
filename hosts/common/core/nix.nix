{ lib, ... }:
{
  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      auto-optimise-store = lib.mkDefault true;
    };
  };

  nixpkgs.config.allowUnfree = true;

  users.mutableUsers = lib.mkDefault false;

  system.stateVersion = lib.mkDefault "25.11";
}
