{ pkgs, ... }:
{
  # Language: Python
  programs.vscode.profiles.Bravo = {
    extensions = with pkgs.vscode-extensions; [
      ms-python.python
      ms-python.vscode-pylance
      ms-python.debugpy

      ms-toolsai.jupyter
      ms-toolsai.jupyter-keymap
      ms-toolsai.jupyter-renderers
      ms-toolsai.vscode-jupyter-cell-tags
      ms-toolsai.vscode-jupyter-slideshow

      charliermarsh.ruff

      vscode-icons-team.vscode-icons
    ];
    userSettings = {
      "editor.acceptSuggestionOnCommitCharacter" = false;
      "editor.acceptSuggestionOnEnter" = "on";
      "editor.accessibilitySupport" = "off";
      "editor.autoClosingBrackets" = "always";
      "editor.autoClosingQuotes" = "always";
      "editor.autoIndent" = "full";
      "editor.bracketPairColorization.enabled" = true;
      "editor.defaultFormatter" = "charliermarsh.ruff";
      "editor.fontSize" = 16;
      "editor.formatOnSave" = true;
      "editor.suggestOnTriggerCharacters" = true;
      "editor.tabSize" = 4;
      "editor.wordWrap" = "off";

      "explorer.confirmDelete" = false;

      "python.languageServer" = "Pylance";
      "python.analysis.languageServerMode" = "full";

      "vsicons.dontShowNewVersionMessage" = true;

      "workbench.colorTheme" = "Monokai";
      "workbench.iconTheme" = "vscode-icons";
      "workbench.preferredDarkColorTheme" = "Monokai";
      "workbench.sideBar.location" = "right";
      "workbench.startupEditor" = "none";
      "workbench.statusBar.visible" = true;
    };
  };
}
