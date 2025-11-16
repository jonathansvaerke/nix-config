{ config, lib, ... }:
{
  networking = {
    networkmanager.enable = lib.mkDefault true;
    useDHCP = lib.mkDefault true;
    enableIPv6 = lib.mkDefault true;
    firewall.enable = lib.mkDefault true;
  };

  hardware.bluetooth = {
    enable = lib.mkDefault true;
    powerOnBoot = lib.mkIf (config.hardware.bluetooth.enable) true;
  };

  services.printing.enable = lib.mkDefault true;
}
