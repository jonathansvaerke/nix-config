{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (pkgs.python313.withPackages (
      pythonPackages: with pythonPackages; [
        # Python Packages:
        matplotlib
        numpy
        pandas
        pygame
        scipy
        sympy
      ]
    ))
  ];
}
