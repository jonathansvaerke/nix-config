{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    package = pkgs.helix;

    settings = {
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
    };

    languages = {
      language = [
        {
          name = "nix";
          auto-format = true;
          formatter = {
            command = "nixfmt";
          };
          language-servers = [ "nixd" ];
        }
        {
          name = "python";
          auto-format = true;
          formatter = {
            command = "black";
            args = [
              "--quiet"
              "-"
            ];
          };
          language-servers = [ "pylsp" ];
        }
        {
          name = "rust";
          auto-format = true;
          formatter = {
            command = "rustfmt";
          };
          language-servers = [ "rust-analyzer" ];
          debugger = {
            name = "codelldb";
          };
        }
        {
          name = "typst";
          auto-format = true;
          language-servers = [ "typst-lsp" ];
        }
      ];

      language-server = {
        nixd = {
          command = "nixd";
        };
        pylsp = {
          command = "pylsp";
        };
        rust-analyzer = {
          command = "rust-analyzer";
          config = {
            check = {
              command = "clippy";
            };
            rustfmt = {
              enable = true;
            };
          };
        };
        typst-lsp = {
          command = "typst-lsp";
        };
      };
    };
  };

  home.packages = with pkgs; [
    # Nix
    nixd
    nixfmt-rfc-style

    # Python
    python313Packages.python-lsp-server
    black

    # Rust
    rust-analyzer
    lldb
    vscode-extensions.vadimcn.vscode-lldb
    rustfmt
    clippy

    # Typst
    tinymist
    typstyle
    typst-live
  ];
}
