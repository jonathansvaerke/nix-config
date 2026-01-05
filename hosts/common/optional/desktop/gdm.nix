{ lib, ... }:
{
  services.xserver.enable = lib.mkDefault true;
  services.displayManager.gdm = lib.mkDefault {
    enable = true;
    settings = { };
  };
}
