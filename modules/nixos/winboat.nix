{ inputs, pkgs, ... }:
{
  environment.systemPackages = [ inputs.nixpkgs-unstable.legacyPackages.${pkgs.system}.winboat ];
}
