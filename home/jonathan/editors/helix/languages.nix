{
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
}
