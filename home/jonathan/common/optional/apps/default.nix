{ pkgs, ... }:
{
  imports = [
    ./firefox.nix
    ./libreoffice.nix
  ];

  home.packages = with pkgs; [
    bitwarden-desktop
    discord
    geogebra6
    vlc
  ];
}
