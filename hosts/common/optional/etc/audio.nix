{ lib, ... }:
{
  security.rtkit.enable = lib.mkDefault true;
  services.pulseaudio.enable = lib.mkDefault false;
  services.pipewire = lib.mkDefault {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
}
