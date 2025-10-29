{ inputs, pkgs, ... }:
{
  imports = [ inputs.nvf.homeManagerModules.default ];
  programs.nvf = {
    enable = true;
    settings.vim = import ./nvf.nix { inherit pkgs; };
  };
}
