{ inputs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    inputs.hardware.nixosModules.common-gpu-nvidia

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
    ../common/optional/etc/lanzaboote.nix
    ../common/optional/tools/git.nix

    # ../../modules/nixos/winboat.nix

    # Choose which users should be created on the system.
    ../common/users/jonathan/user.nix
    ../common/users/root/user.nix
  ];

  networking.hostName = "turing";

  hardware.nvidia = {
    open = true;
    prime.offload.enable = false;
  };
}
