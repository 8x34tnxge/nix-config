{ config, pkgs, ...}:

{

  imports = [
    ./program
  ];

  home.username = "zhuying";
  home.homeDirectory = "/home/zhuying";

  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  home.packages = with pkgs; [
    # office
    feishu
    libreoffice

    # archives
    zip
    unzip
    p7zip

    # terminal utils
    ripgrep
    fd
    file
    which
    tree
    gnused
    gnumake
    gnutar
    gawk
    zstd
    gnupg

    # system call monitoring
    strace
    ltrace
    lsof

    # system tools
    sysstat
    lm_sensors
    ethtool
    pciutils
    usbutils
  ];

  #programs.alacritty = {
  programs.kitty = {
    enable = true;
    #settings = {
      #env.TERM = "xterm-256color"; #font = { #  size = 12;
      #};
      #scrolling.multiplier = 5;
      #selection.save_to_clipboard = true;
    #};
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      vim = "nvim";
    };
  };

  services.udiskie.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {
      "$mod" = "SUPER";
      bind = [
        "$mod, T, exec, kitty"
	#"$mod, Q, exit"

	"$mod, H, movefocus, l"
	"$mod, J, movefocus, d"
	"$mod, K, movefocus, u"
	"$mod, L, movefocus, r"
      ];
    };
  };

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
