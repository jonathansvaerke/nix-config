{ pkgs, ... }:
{
  home.packages = with pkgs; [
    rust-analyzer # LSP
    rustfmt # Formatter
    clippy # Linter
  ];
}
