{
  pkgs,
  ...
}:

{
  home.packages = [ pkgs.gh ];

  programs.git = {
    enable = true;

    userName = "8x34tnxge";
    userEmail = "8x34tnxge@mozmail.com";
  };
}
