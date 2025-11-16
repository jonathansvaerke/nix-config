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
    ../common/optional/desktop/gdm.nix
    ../common/optional/editors/nvim.nix
    ../common/optional/etc/audio.nix
    ../common/optional/etc/fonts.nix
    ../common/optional/etc/language.nix
    ../common/optional/tools/git.nix

    ../../modules/nixos/eduroam.nix # Create a certificate for Eduroam

    ../common/users/jonathan/user.nix
    ../common/users/root/user.nix
  ];

  networking = {
    hostName = "ritchie";
  };

  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 16 * 1024; # 16 GB
    }
  ];
}
