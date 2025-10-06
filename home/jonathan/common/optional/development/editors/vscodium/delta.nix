{ pkgs, ... }:
{
  # Languages: Nix, Yaml, JSON
  programs.vscode.profiles.Delta = {
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
      redhat.vscode-yaml

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

      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "nixd";
      "nix.serverSettings" = {
        "nixd" = {
          "formatting" = {
            "command" = [ "nixfmt" ];
          };
        };
      };

      "redhat.telemetry.enabled" = false;

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
