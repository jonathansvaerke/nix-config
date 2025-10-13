{ inputs, pkgs, ... }:
{
  imports = [
    inputs.sops-nix.nixosModules.sops
  ];

  environment.systemPackages = with pkgs; [
    age
    sops
  ];

  sops = {
    defaultSopsFile = ../../../secrets.yaml;
    defaultSopsFormat = "yaml";
    validateSopsFiles = true;
    age = {
      keyFile = "/home/jonathan/.config/sops/age/keys.txt";
    };
    secrets = {
      "root-password" = {
        neededForUsers = true;
      };
      "jonathan-password" = {
        neededForUsers = true;
      };
      "at/username" = { };
      "at/password" = { };
    };
  };
}
