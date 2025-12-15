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
      ncg = "sudo nix-collect-garbage -d";
      po = "poweroff";
      sdn = "shutdown now";
    };
  };
}
