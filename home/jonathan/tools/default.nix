{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./direnv.nix
    ./git.nix
    ./rclone.nix
    ./sops.nix
    ./winboat.nix
  ];

  home.packages = with pkgs; [
    bat
    fastfetch
    tree
    unzip
  ];
}
