{ config, pkgs, ... }:
{
  programs.rclone = {
    enable = true;
    package = pkgs.rclone;
  };

  #home.file.".config/rclone/rclone.conf" = {
  #source = config.sops.templates."at-onedrive".path;
  #};

  #sops.templates."at-onedrive" = {
  #content = ''

  #'';
  #};
}
