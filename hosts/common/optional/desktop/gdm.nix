{ lib, ... }:
{
  services.xserver.enable = lib.mkDefault true;
  services.xserver.displayManager.gdm = lib.mkDefault {
    enable = true;
    settings = { };
  };
}
