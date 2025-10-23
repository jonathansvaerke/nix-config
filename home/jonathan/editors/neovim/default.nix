{ inputs, pkgs, ... }:
{
  imports = [ inputs.nvf.homeManagerModules.default ];
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        languages = {
          nix = {
            enable = true;
            format = {
              enable = true;
              package = pkgs.nixfmt-rfc-style;
              type = "nixfmt";
            };
            lsp = {
              enable = true;
              #options = {};
              package = pkgs.nixd;
              server = "nixd";
            };
            treesitter = {
              enable = true;
            };
          };
          python = {
            enable = true;
            dap = {
              enable = true;

            };
            format = {
              enable = true;
              package = pkgs.ruff;
              type = "ruff";
            };
            lsp = {
              enable = true;
            };
            treesitter = {
              enable = true;
            };
          };
          zig = {
            enable = true;
            dap = {
              enable = true;
            };
            lsp = {
              enable = true;
              package = pkgs.zls;
              server = "zls";
            };
            treesitter = {
              enable = true;
            };
          };
        };
        theme = {
          enable = true;
          name = "tokyonight";
          style = "dark";
        };
      };
    };
  };
}
