{ lib, ... }:
{
  virtualisation.docker.enable = lib.mkDefault true;
}
