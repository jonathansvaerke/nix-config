{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    rust-analyze # LSP
    rustfmt # Formatter
  ];
}
