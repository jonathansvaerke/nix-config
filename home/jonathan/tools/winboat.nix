{
  systemConfig,
  lib,
  pkgs,
  inputs,
  ...
}:
{
  home.packages = lib.optional (
    systemConfig.networking.hostName == "turing"
  ) inputs.nixpkgs-unstable.legacyPackages.${pkgs.system}.winboat;
}
