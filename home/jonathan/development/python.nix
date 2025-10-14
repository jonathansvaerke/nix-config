{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (pkgs.python313.withPackages (
      pythonPackages: with pythonPackages; [
        # Python Packages:
        matplotlib
        numpy
        pandas
        scipy
        sympy

        # Jupyter Notebooks:
        ipykernel
        jupyter
        notebook
      ]
    ))
    ruff # Formatter for python
  ];
}
