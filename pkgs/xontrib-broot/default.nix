{
  pkgs,
  python3,
}: let
  pname = "xontrib-broot";
  version = "0.2.1";
in
  python3.pkgs.buildPythonPackage {
    inherit pname version;

    src = pkgs.fetchFromGitHub {
      owner = "jnoortheen";
      repo = "xontrib-broot";
      rev = "6f658ff88aba27b921017297d8c2c3dfb2ffa332";
      sha256 = "sha256-9GqsTVCMvrWpTopHtEdicTyYRQzP1NVtQHZsfBT+fUg=";
    };

    doCheck = false;
    format = "pyproject";
    # nativeBuildInputs = with pkgs.python3Packages; [
    #   setuptools
    #   poetry-core
    # ];
    buildInputs = with pkgs.python3Packages; [
      setuptools
      pdm-pep517
      poetry-core
    ];

    meta = {
      homepage = "https://github.com/jnoortheen/xontrib-broot";
      license = pkgs.lib.licenses.mit;
      description = "[how-to use in nix](https://github.com/drmikecrowe/nur-packages) xonsh direnv";
    };
  }