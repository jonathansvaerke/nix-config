{ lib, ... }:
{
  networking = lib.mkDefault {
    networkmanager.enable = true;
    useDHCP = true;
    enableIPv6 = true;
    firewall.enable = true;
  };

  hardware.bluetooth = lib.mkDefault {
    enable = true;
    powerOnBoot = true;
  };

  services.printing.enable = lib.mkDefault true;
}
