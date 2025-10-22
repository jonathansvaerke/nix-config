{ pkgs, ... }:
{
  home.packages = with pkgs.jetbrains; [
    #clion
    pycharm-professional
  ];
}
