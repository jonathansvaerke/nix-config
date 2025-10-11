{ config, ... }:
{
  users.users.root.hashedPasswordFile = config.sops."root-password".path;
}
