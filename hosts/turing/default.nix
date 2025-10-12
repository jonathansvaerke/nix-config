{ inputs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    inputs.hardware.nixosModules.common-gpu-nvidia

    ../common/core
    ../common/optional

    ../common/users/jonathan
    ../common/users/root
  ];

  networking = {
    hostName = "turing";
  };

  hardware.nvidia = {
    open = true;
    prime.offload.enable = false;
  };
}
