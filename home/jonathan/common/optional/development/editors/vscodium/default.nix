{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
  };

  imports = [
    ./alpha.nix
    ./bravo.nix
    ./charlie.nix
    ./delta.nix
  ];
}
