{ lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [ distrobox ];

  virtualisation = {
    containers.enable = lib.mkDefault true;
    podman = {
      enable = lib.mkDefault true;
      dockerCompat = lib.mkDefault true;
    };
  };

  virtualisation.docker.enable = false;
}
