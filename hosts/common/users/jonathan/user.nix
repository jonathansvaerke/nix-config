{
  config,
  inputs,
  pkgs,
  ...
}:
{

  imports = [
    inputs.home-manager.nixosModules.home-manager
    #inputs.sops-nix.nixosModules.sops

    ../../optional/desktop/gnome.nix

    ../../optional/development/c.nix
    ../../optional/development/python.nix
    ../../optional/development/rust.nix
    ../../optional/development/typst.nix
    ../../optional/development/zig.nix

    ../../optional/editors/helix.nix
    ../../optional/etc/home-manager.nix
    ../../optional/etc/steam.nix
    ../../optional/tools/direnv.nix
    ../../optional/tools/distrobox.nix
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
      "podman"
      "wheel"
    ];
  };

  sops.secrets = {
    "jonathan-password" = {
      neededForUsers = true;
    };
  };

  home-manager.users.jonathan = import ../../../../home/jonathan/home.nix;
}
