{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting = {
      enable = true;
      highlighters = [ "main" ]; # Default highlighter
    };
    shellAliases = {
      clr = "clear";
      sdn = "shutdown now";
    };
  };
}
