{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    corefonts
    nerd-fonts.ubuntu
    nerd-fonts.ubuntu-mono
    nerd-fonts.ubuntu-sans
    source-code-pro
  ];
}
