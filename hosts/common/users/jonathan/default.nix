{ inputs, ... }:
{

  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  #users.mutableUsers = false;
  users.users.jonathan = {
    isNormalUser = true;
    description = "Jonathan Svaerke";
    home = "/home/jonathan";
    #hashedPasswordFile = config.sops.secrets."jonathan-password".path;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.jonathan = import ../../../../home/jonathan;
  };
}
