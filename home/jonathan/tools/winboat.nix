{ pkgs, inputs, ... }:
{
  home.packages = [
    inputs.nixpkgs-unstable.legacyPackages.${pkgs.system}.winboat
  ];
}
