{ inputs, ... }:
{

  imports = [
    ./hardware-configuration.nix

    ../common/core/boot.nix
    ../common/core/network.nix
    ../common/core/nix.nix
    ../common/core/shell.nix
    ../common/core/sops.nix
    ../common/core/ssh.nix

    # What modules does the host want?
    ../common/optional/etc/language.nix
    ../common/optional/tools/git.nix

    # Choose which users should be created on the system.
    ../common/users/jonathan/user.nix
    ../common/users/root/user.nix
  ];

  networking.hostName = "shannon";
}
