{
  imports = [
    ./common/core
    ./editors
    ./programs
    ./terminal
  ];

  programs.home-manager.enable = true;

  home = {
    username = "jonathan";
    homeDirectory = "/home/jonathan";
    stateVersion = "25.05";
  };
}
