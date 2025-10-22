{ pkgs, ... }:
{
  fonts.packages = with pkgs.nerd-fonts; [
    ubuntu
    ubuntu-mono
    ubuntu-sans
  ];
}
