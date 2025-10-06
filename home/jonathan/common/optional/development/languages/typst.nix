{ pkgs, ... }:

{
  home.packages = with pkgs; [
    typst
    typstyle # Language server for editor integration
    typst-live # Live preview server
  ];
}
