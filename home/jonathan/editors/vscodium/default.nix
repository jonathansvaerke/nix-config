{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles = {
      Alpha = (import ./alpha.nix) { inherit pkgs; };
      Bravo = (import ./bravo.nix) { inherit pkgs; };
      Charlie = (import ./charlie.nix) { inherit pkgs; };
      Delta = (import ./delta.nix) { inherit pkgs; };
    };
  };
}
