{ pkgs, ... }:
{
  home.packages = with pkgs; [
    libreoffice-qt

    hunspell
    hunspellDicts.en_US
    hunspellDicts.da_DK
  ];
}
