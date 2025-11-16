{ inputs, ... }:
{
  imports = [
    inputs.sops-nix.homeManagerModules.sops
  ];

  sops = {
    defaultSopsFile = ../../../../modules/nixos/sops-nix/secrets.yaml;
    defaultSopsFormat = "yaml";
    validateSopsFiles = true;
    age = {
      keyFile = "/home/jonathan/.config/sops/age/keys.txt";
    };
    secrets = {
      "git/userName" = { };
      "git/userEmail" = { };
    };
  };
}
