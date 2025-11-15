{ pkgs, ... }:
{
  # Languages: C, Zig, C++ etc.
  extensions = with pkgs.vscode-extensions; [
    ziglang.vscode-zig

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
    "editor.fontSize" = 16;
    "editor.formatOnSave" = true;
    "editor.suggestOnTriggerCharacters" = true;
    "editor.tabSize" = 2;
    "editor.wordWrap" = "off";

    "explorer.confirmDelete" = false;

    "vsicons.dontShowNewVersionMessage" = true;

    "workbench.colorTheme" = "Monokai";
    "workbench.iconTheme" = "vscode-icons";
    "workbench.preferredDarkColorTheme" = "Monokai";
    "workbench.sideBar.location" = "right";
    "workbench.startupEditor" = "none";
    "workbench.statusBar.visible" = true;
    "zig.zls.enabled" = true;
  };
}
