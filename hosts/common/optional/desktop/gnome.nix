{ lib, ... }:
{
  services.xserver.enable = lib.mkDefault true;
  services.xserver.desktopManager.gnome.enable = lib.mkDefault true;

  services.gnome = {
    core-apps.enable = false;
    core-developer-tools.enable = false;
    games.enable = false;
  };
}
