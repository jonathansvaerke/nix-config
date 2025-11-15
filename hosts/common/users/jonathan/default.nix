{
  config,
  inputs,
  pkgs,
  ...
}:
{

  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  users.mutableUsers = false;
  users.users.jonathan = {
    isNormalUser = true;
    description = "Jonathan Svaerke";
    home = "/home/jonathan";
    shell = pkgs.zsh;
    hashedPasswordFile = config.sops.secrets."jonathan-password".path;
    extraGroups = [
      "docker"
      "networkmanager"
      "wheel"
    ];
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = {
      inherit inputs;
      systemConfig = config;
    };
    users.jonathan = import ../../../../home/jonathan;
  };
}
