{ pkgs, ... }:
{
  home.packages = with pkgs; [
    python313Packages.python-lsp-server
    black
  ];
}
