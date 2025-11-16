{
  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      auto-optimise-store = true;
    };
  };

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05";
}
