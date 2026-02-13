{
  language = [
    {
      name = "nix";

      auto-format = true;
      formatter = {
        command = "nixfmt";
      };
    }
    {
      name = "python";
      language-servers = [ "pylsp" ];
      auto-format = true;
      formatter = {
        command = "black";
        args = [
          "--quiet"
          "-"
        ];
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
}
