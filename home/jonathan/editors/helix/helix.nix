{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    package = pkgs.helix;

    settings = import ./settings.nix;

    languages = import ./languages.nix;
  };

  home.packages = with pkgs; [
    # Nix
    nixd
    nixfmt-rfc-style

    # Python
    python313Packages.python-lsp-server
    black

    # Rust
    rust-analyzer
    rustfmt
    clippy

    # Typst
    tinymist
    typstyle
    typst-live
  ];
}
