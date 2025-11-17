{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [ inputs.nixpkgs-unstable.legacyPackages.${pkgs.system}.winboat ];
}
