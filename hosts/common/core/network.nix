{ lib, ... }:
{
  networking = {
    networkmanager.enable = true;
    useDHCP = lib.mkDefault true;
    enableIPv6 = false;
    firewall.enable = true;
  };

  hardware.bluetooth = {
    enable = lib.mkDefault true;
    powerOnBoot = true;
  };

  services.printing.enable = lib.mkDefault true;
}
