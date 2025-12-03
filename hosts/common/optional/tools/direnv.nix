{ lib, ... }:
{
  programs.direnv = lib.mkDefault {
    enable = true;
    nix-direnv.enable = true;
  };
}
