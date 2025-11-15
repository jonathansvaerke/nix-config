{ config, lib, ... }:
{
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
  };

  hardware.nvidia-container-toolkit.enable = lib.mkIf (
    config.services.xserver.videoDrivers == [ "nvidia" ]
  ) true;
}
