{ lib, ... }:
{
  programs.neovim = lib.mkDefault {
    enable = true;
    defaultEditor = true;
  };
}
