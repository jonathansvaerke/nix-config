{ lib, ... }:
{
  programs.zsh = lib.mkDefault {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting = {
      enable = true;
      highlighters = [ "main" ]; # Default highlighter
    };
  };
}
