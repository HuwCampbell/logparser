let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;
  pypkgs = pkgs.pythonPackages;
in with pkgs; {
  logparser = pypkgs.buildPythonPackage {
    pname = "logparser";
    version = "1";
    src = ./.;

    buildInputs = with pypkgs; [
      ipython
      python
      numpy
      scipy
      scikitlearn
      pandas
      perl
    ];
  };
}
