{
  description = "My NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hardware = {
      url = "github:nixos/nixos-hardware";
    };

    sops-nix = {
      url = "github:mic92/sops-nix";
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
      system = "x86_64-linux";
      lib = nixpkgs.lib // home-manager.lib;
    in
    {
      inherit lib;

      #devShells.${system} = import ./dev-shells.nix { inherit pkgs; };

      nixosConfigurations = {

        # DUTZO Esport Fire (Intel i5-12400F, Nvidia RTX 4060)
        turing = lib.nixosSystem {
          system = system;
          modules = [
            ./hosts/turing
          ];
          specialArgs = {
            inherit inputs self;
          };
        };

        # Acer Aspire 3 15 A315-24P-R7VH
        ritchie = lib.nixosSystem {
          system = system;
          modules = [
            ./hosts/ritchie
          ];
          specialArgs = {
            inherit inputs self;
          };
        };
      };
    };
}
