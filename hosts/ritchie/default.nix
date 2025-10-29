{
  imports = [
    ./hardware-configuration.nix

    ../common/core
    ../common/optional
    ../../modules/nixos/eduroam.nix

    ../common/users/jonathan
    ../common/users/root
  ];

  networking = {
    hostName = "ritchie";
  };

  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 16 * 1024; # 16 GB
    }
  ];
}
