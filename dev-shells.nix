{ pkgs }:
let
  pythonWithPackages = pkgs.python313.withPackages (
    pythonPackages: with pythonPackages; [
      matplotlib
      numpy
      pandas
      scipy
      sympy
    ]
  );
in
{
  python = pkgs.mkShell {
    buildInputs = [ pythonWithPackages ];
  };

  typst = pkgs.mkShell {
    buildInputs = with pkgs; [
      typst
      typstyle
      pythonWithPackages
    ];
  };

  zig = pkgs.mkShell {
    buildInputs = with pkgs; [
      zig
    ];
  };
}
