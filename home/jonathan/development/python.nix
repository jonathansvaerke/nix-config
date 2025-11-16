{ pkgs, ... }:
{
  home.packages = with pkgs; [
    black
    ruff
  ];
}
