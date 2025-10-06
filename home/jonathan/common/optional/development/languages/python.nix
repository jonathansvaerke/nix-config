{ pkgs, ... }:
{
  home.packages = [
    (pkgs.python313.withPackages (
      pythonPackages: with pythonPackages; [
        ipykernel
        jupyter
        matplotlib
        numpy
        pandas
        pip
        scipy
        sympy
      ]
    ))
  ];
}
