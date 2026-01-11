{
  description = "My NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hardware = {
      url = "github:nixos/nixos-hardware";
    };

    sops-nix = {
      url = "github:mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    lanzaboote = {
      url = "github:nix-community/lanzaboote/v1.0.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    let
      lib = nixpkgs.lib // home-manager.lib;
    in
    {
      inherit lib;

      nixosConfigurations = {

        # DUTZO Esport Fire (Intel i5-12400F, Nvidia RTX 4060, 32 GB RAM)
        turing = lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./hosts/turing/configuration.nix
          ];
          specialArgs = {
            inherit inputs self;
          };
        };

        # Acer Aspire 3 15 A315-24P-R7VH
        ritchie = lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./hosts/ritchie/configuration.nix
          ];
          specialArgs = {
            inherit inputs self;
          };
        };
      };
    };
}
