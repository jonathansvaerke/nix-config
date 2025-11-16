{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = lib.optional (
    config.networking.hostName == "turing"
  ) inputs.nixpkgs-unstable.legacyPackages.${pkgs.system}.winboat;
}
