{ pkgs, ... }:
{
  imports = [
    ./fastfetch.nix
    ./ghostty.nix
  ];

  home.packages = with pkgs; [
    tree
  ];
}
