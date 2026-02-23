{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;

    syntaxHighlighting = {
      enable = true;
      highlighters = [ "main" ]; # Default highlighter
    };

    initContent = ''
      PROMPT='%n@%m > '
    ''; # user@host: path/to/directory/ > $  =>  user@host > $

    shellAliases = {
      p = "pwd";
      pl = " pwd && ls";
      clr = "clear";

      po = "poweroff";
      sdn = "shutdown now";

      ncg = "sudo nix-collect-garbage -d";
      pico8 = "steam-run /home/jonathan/Desktop/pico-8/pico8";
    };
  };
}
