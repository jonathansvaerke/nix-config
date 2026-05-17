{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    rustc
    cargo
    rustup
    pkgsCross.mingwW64.stdenv.cc
    pkgsCross.mingwW64.windows.pthreads
  ];
}
