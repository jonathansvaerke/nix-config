{ config, ... }:
{
  users.users.root.hashedPasswordFile = config.sops.secrets."root-password".path;

  sops.secrets = {
    "root-password" = {
      neededForUsers = true;
    };
  };
}
