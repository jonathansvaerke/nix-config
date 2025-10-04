{ pkgs, ... }:
{
  imports = [
    ./fastfetch.nix
    ./ghostty.nix
    ./git.nix
  ];

  home.packages = with pkgs; [
    tree
  ];
}
