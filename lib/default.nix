{pkgs}:
with pkgs.lib; {
  # Add your library functions here
  #
  # hexint = x: hexvals.${toLower x};
  maintainers =
    lib.maintainers
    // {
      drmikecrowe = {
        github = "drmikecrowe";
        githubId = 90312;
        name = "Mike Crowe";
        email = "drmikecrowe@gmail.com";
        keys = [{fingerprint = "8978 4645 9539 BD9C 18F5  0B5F 6741 8918 CA9B B7B1";}];
      };
    };
}
