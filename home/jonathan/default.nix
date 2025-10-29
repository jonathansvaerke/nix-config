{ config, ... }:
{
  imports = [
    ./apps
    ./development

    ./editors/jetbrains
    #./editors/neovim
    ./editors/vscodium

    ./shell
    ./tools
  ];

  programs.home-manager.enable = true;

  home = {
    username = "jonathan";
    homeDirectory = "/home/${config.home.username}";
    stateVersion = "25.05";
  };
}
