{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    package = pkgs.helix;

    settings = {
      theme = "tokyonight";

      editor = {
        line-number = "relative";
        mouse = true;
        cursorline = true;
        auto-save = true;
        color-modes = true;

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        indent-guides = {
          render = true;
          character = "┊";
        };

        lsp = {
          display-messages = true;
          display-inlay-hints = true;
        };

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
      languages = {
        language = [
          {
            name = "rust";
            auto-format = true;
            formatter = {
              command = "${pkgs.rustfmt}/bin/rustfmt";
            };
          }
          {
            name = "nix";
            auto-format = true;
            formatter = {
              command = "${pkgs.nixfmt-rfc-style}/bin/nixfmt";
            };
          }
        ];

        language-server = {
          rust-analyzer = {
            command = "${pkgs.rust-analyzer}/bin/rust-analyzer";
            config = {
              checkOnSave = {
                command = "clippy";
              };
            };
          };

          nixd = {
            command = "${pkgs.nixd}/bin/nixd";
          };
        };
      };
    };
  };
}
