{
  imports = [
    ./editors
    ./programs
    ./terminal
  ];

  programs.home-manager.enable = true;

  home = {
    username = "jonathan";
    homeDirectory = "/home/jonathan";
    stateVersion = "24.11";
  };
}
