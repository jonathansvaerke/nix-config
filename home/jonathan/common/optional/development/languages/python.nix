{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (pkgs.python313.withPackages (
      pythonPackages: with pythonPackages; [
        ipykernel
        jupyter
        matplotlib
        notebook
        numpy
        pandas
        pip
        scipy
        sympy
      ]
    ))
    ruff
  ];
}
