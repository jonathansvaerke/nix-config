{
  services.openssh = {
    enable = true;
    PasswordAuthentication = false;
    PermitRootLogin = "no";
  };
}
