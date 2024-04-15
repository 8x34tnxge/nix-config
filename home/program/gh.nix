{
  pkgs,
  ...
} :

{
  programs.gh = {
    enable = true;

    gitCredentialHelper.enable = true;
    settings = {
      editor = "nvim";
      git_protocol = "https";
    };
  };
}
