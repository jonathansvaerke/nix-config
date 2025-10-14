{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bitwarden-desktop
    discord
    firefox
    geogebra6

    # LibreOffice:
    libreoffice-qt
    hunspell
    hunspellDicts.en_US
    hunspellDicts.da_DK

    vivaldi
    vlc
  ];
}
