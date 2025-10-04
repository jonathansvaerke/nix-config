{inputs,...}:{
  imports = [
    inputs.sops-nix.homeManagerModules.sops
  ];

  sops = {
    defaultSopsFile = "../../../../secrets.yaml";
    defaultSopsFormat = "yaml";
    age = {
      keyFile = "/home/jonathan/.config/sops/age/keys.txt";
    };
    secrets = {
      "git/userName" = { };
      "git/userEmail" = { };
    }
  };
}