{
  inputs,
  lib,
  pkgs,
  ...
}:
{
  imports = [ inputs.sops-nix.nixosModules.sops ];

  environment.systemPackages = with pkgs; [
    age
    sops
  ];

  sops = lib.mkDefault {
    defaultSopsFile = ../../../modules/nixos/sops-nix/secrets.yaml;
    defaultSopsFormat = "yaml";
    validateSopsFiles = true;
    age = {
      keyFile = "/home/jonathan/.config/sops/age/keys.txt";
    };
  };
}
