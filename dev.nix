let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;
  pypkgs = pkgs.pythonPackages;
in with pkgs; {
  myProject = pypkgs.buildPythonPackage {
    pname = "logparser";
    version = "1";
    src = ./logparser;

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
