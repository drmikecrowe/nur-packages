{
  lib,
  pkgs,
  buildPythonPackage,
}:
buildPythonPackage rec {
  pname = "xontrib-superfile";
  version = "0.0.4";

  src = pkgs.fetchFromGitHub {
    owner = "TechnoStrife";
    repo = "xontrib-superfile";
    rev = "acca97967bb29d5051dbe236a375a85293e06875";
    sha256 = "sha256-bVn+2264xPupI/Bm4eSfCOmIxsR6bcbVlJEgWD1o2oI=";
  };

  doCheck = false;

  format = "pyproject";

  nativeBuildInputs = with pkgs.python3Packages; [
      build
      pdm-backend
  ];

  postPatch = ''
    sed -ie "/xonsh.*=/d" pyproject.toml
  '';
  
  meta = with lib; {
    description = "[superfile](https://github.com/yorukot/superfile) support function in the [xonsh shell](https://xon.sh).";
    homepage = "https://github.com/TechnoStrife/xontrib-superfile";
    license = licenses.mit;
  };
}

