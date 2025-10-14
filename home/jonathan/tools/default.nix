{ pkgs, ... }:
{
  imports = [
    ./direnv.nix
    ./git.nix
    ./sops.nix
  ];

  home.packages = with pkgs; [
    bat
    fastfetch
    tree
  ];
}
