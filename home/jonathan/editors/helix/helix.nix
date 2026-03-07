{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    package = pkgs.helix;
    defaultEditor = true;

    settings = import ./config.nix;
    languages = import ./languages.nix;
  };

  home.packages = with pkgs; [
    lua-language-server
    stylua

    # Nix
    nixd
    nixfmt-rfc-style

    # Python
    pyright
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
