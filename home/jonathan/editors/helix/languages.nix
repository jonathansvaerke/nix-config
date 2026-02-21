{
  language = [
    {
      name = "lua";
      file-types = [
        "lua"
        "p8"
      ];
      language-servers = [ "lua-language-server" ];
      auto-format = true;
      formatter = {
        command = "stylua";
      };
    }
    {
      name = "nix";
      language-servers = [ "nixd" ];
      auto-format = true;
      formatter = {
        command = "nixfmt";
      };
    }
    {
      name = "python";
      language-servers = [ "pyright" ];
      auto-format = true;
      formatter = {
        command = "black";
      };
    }
    {
      name = "rust";
      language-servers = [ "rust-analyzer" ];
      auto-format = true;
      formatter = {
        command = "rustfmt";
      };
    }
    {
      name = "typst";
      language-servers = [ "typst-lsp" ];
      auto-format = true;
      formatter = {
        command = "typstyle";
      };
    }
  ];

  language-server = {
    lua-language-server = {
      command = "lua-language-server";
    };
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
        diagnostics = {
          unlinked-file = true;
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
}
