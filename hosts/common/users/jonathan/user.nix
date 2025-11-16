{
  config,
  inputs,
  pkgs,
  ...
}:
{

  imports = [
    inputs.home-manager.nixosModules.home-manager
    ../../optional/etc/home-manager.nix

    ../../optional/desktop/gnome.nix

    ../../optional/development/python.nix
    ../../optional/development/typst.nix
    ../../optional/development/zig.nix

    ../../optional/editors/helix.nix
    ../../optional/tools/direnv.nix
    ../../optional/tools/docker.nix
    ../../optional/tools/git.nix
    ../../optional/tools/keyd.nix
  ];

  users.mutableUsers = false;
  users.users.jonathan = {
    isNormalUser = true;
    description = "Jonathan Svaerke";
    home = "/home/jonathan";
    shell = pkgs.zsh;
    hashedPasswordFile = config.sops.secrets."jonathan-password".path;
    extraGroups = [
      "docker"
      "networkmanager"
      "wheel"
    ];
  };

  home-manager.users.jonathan = import ../../../../home/jonathan/home.nix;
}
