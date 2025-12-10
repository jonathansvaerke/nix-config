{ config, pkgs, ... }:
{
  imports = [
    ./editors/helix/helix.nix
    ./editors/nvim/nvim.nix
    ./editors/vscodium/vscodium.nix

    ./shell/ghostty.nix
    ./shell/zsh.nix

    ./tools/git.nix
    ./tools/rclone.nix
    ./tools/sops-nix/sops.nix
  ];

  home.packages = with pkgs; [
    # Apps
    #bitwarden-desktop
    discord
    firefox
    #geogebra6
    nautilus

    # LibreOffice:
    libreoffice-qt
    hunspell
    hunspellDicts.en_US
    hunspellDicts.da_DK

    vlc
    zotero

    # Tools
    fastfetch
    tree
    unzip
  ];

  programs.home-manager.enable = true;

  home = {
    username = "jonathan";
    homeDirectory = "/home/${config.home.username}";
    stateVersion = "25.05";
  };

  #xdg.userDirs = {
  #  enable = true;
  #  desktop = "${config.home.homeDirectory}/desktop";
  #  documents = "${config.home.homeDirectory}/documents";
  #  downloads = "${config.home.homeDirectory}/downloads";
  #  music = "${config.home.homeDirectory}/music";
  #  pictures = "${config.home.homeDirectory}/pictures";
  #  publicShare = "${config.home.homeDirectory}/public";
  #  templates = "${config.home.homeDirectory}/templates";
  #  videos = "${config.home.homeDirectory}/videos";
  #};
}
