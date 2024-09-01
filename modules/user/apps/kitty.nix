{ config, pkgs, ...}:

{
  imports = [
    ../../common/theme.nix
  ];

  programs.kitty = {
    enable = true;

    settings = {
      foreground = "#${config.colorScheme.palette.base05}";
      background = "#${config.colorScheme.palette.base00}";
    };

    extraConfig = ''
      shell fish
      confirm_os_window_close 0
    '';
  };
}
