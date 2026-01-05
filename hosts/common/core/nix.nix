{ lib, ... }:
{
  nix = lib.mkDefault {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      auto-optimise-store = true;
    };
  };

  nixpkgs.config.allowUnfree = lib.mkDefault true;

  system.stateVersion = lib.mkDefault "25.11";
}
