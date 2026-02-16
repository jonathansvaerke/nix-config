{
  theme = "autumn";
  editor = {
    # Line and cursor settings
    line-number = "relative";
    cursor-shape = {
      insert = "bar";
      normal = "block";
      select = "underline";
    };
    # Indentation
    indent-guides = {
      render = true;
      character = "┊";
    };
    whitespace.render = {
      space = "none";
      tab = "all";
      newline = "none";
    };
    # IDE
    color-modes = true;
    cursorline = true;
    # LSP
    lsp = {
      display-messages = true;
      display-inlay-hints = true;
    };
    # Completion
    completion-trigger-len = 1;
    auto-completion = true;
    statusline = {
      left = [
        "mode"
        "spinner"
        "file-name"
        "file-modification-indicator"
      ];
      center = [ ];
      right = [
        "diagnostics"
        "selections"
        "position"
        "file-encoding"
        "file-type"
      ];
    };
  };
}
