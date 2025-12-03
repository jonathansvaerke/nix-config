{ lib, ... }:
{
  services.openssh = lib.mkDefault {
    enable = true;
    settings = {
      PasswordAuthentication = false;
      PermitRootLogin = "no";
    };
  };
}
