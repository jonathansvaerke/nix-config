{ inputs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    inputs.hardware.nixosModules.common-gpu-nvidia

    ../common/core
    ../common/users/jonathan

    ../common/optional
  ];

  networking = {
    hostName = "turing";
  };

  hardware.nvidia = {
    open = true;
    prime.offload.enable = false;
  };
}
