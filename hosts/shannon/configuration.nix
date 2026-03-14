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
    ../common/optional/desktop/gnome.nix
    ../common/optional/etc/language.nix
    ../common/optional/tools/git.nix

    # Choose which users should be created on the system.
    ../common/users/patrick/user.nix
  ];

  networking.hostName = "shannon";
  users.users.root.hashedPassword = "$6$HD8Ww/DN9Sz7Bjr0$37RISuLycKhSdp/fhZJgce34eUX9LjYcbusPcGIVbH6s9FxkA0gYrqwUDnIQusEY3LvfXP2rc0NU/udtr8cv11";
}
