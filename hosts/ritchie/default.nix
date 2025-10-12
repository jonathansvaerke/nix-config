{
  imports = [
    ./hardware-configuration.nix

    ../common/core
    ../common/optional

    ../common/users/jonathan
    ../common/users/root
  ];

  networking = {
    hostName = "ritchie";
  };
}
