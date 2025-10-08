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
        pandoc
        pip
        scipy
        sympy
      ]
    ))
    pandoc
    ruff
  ];
}
