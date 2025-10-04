{
  boot = {
    loader = {
      systemd-boot = {
        enable = true;
        configurationLimit = 3;
        editor = false;
      };
      efi.canTouchEfiVariables = true;
      timeout = 60;
    };
    kernelParams = [ "nohibernate" ];
    tmp.cleanOnBoot = true;
  };
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
