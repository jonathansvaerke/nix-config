{
  imports = [
    ./hardware-configuration.nix

    ../common/core
    ../common/users/jonathan

    ../common/optional
  ];

  networking = {
    hostName = "ritchie";
  };
}
