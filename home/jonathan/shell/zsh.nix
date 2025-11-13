{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    shellAliases = {
      clr = "clear";
      sdn = "shutdown now";
    };
    syntaxHighlighting = {
      enable = true;
      highlighters = [ "main" ]; # Default highlighter
    };
  };
}
