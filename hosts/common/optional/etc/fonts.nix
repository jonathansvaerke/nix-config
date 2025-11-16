{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    corefonts
    nerd-fonts.ubuntu
    source-code-pro
  ];
}
