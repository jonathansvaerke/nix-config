{ pkgs, ... }:
{
  imports = [ ];

  users.users.patrick = {
    isNormalUser = true;
    description = "Patrick";
    home = "/home/patrick";
    shell = pkgs.zsh;
    hashedPassword = "$6$YtaLKREg0mKZviHc$L8fAEjR4IPwgUJnuyHHLMdwB1dSTwEiI/8QkwHYiog9B9GEcjACK3fuOd10vf3My4JVBwjmHYWzYgFXXbxGpA/";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICUs6HiG8RpHPl3WFPlB1gzdxBxJl7l81r/ubbmt2KsL jonathan@turing"
    ];
  };
}
