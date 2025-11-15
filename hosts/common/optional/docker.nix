{ config, lib, ... }:
{
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
  };

  hardware.nvidia-container-toolkit.enable = lib.mkIf (config.hardware.nvidia.open or false) true; # Check the value, if defined take that, but if the option isn't defined, set it as false.
}
