{ config, pkgs, ...}:

{

  programs.kitty = 

  let
    vars = import ../../common/variables.nix;
  in {
    enable = true;

    settings = {
      foreground = "#${config.lib.stylix.colors.base05}";
      background = "#${config.lib.stylix.colors.base00}";
    };

    extraConfig = ''
      background_opacity ${vars.opacity}
      font_family family = "Hack Nerd Font"
      shell fish
      confirm_os_window_close 0
    '';
  };
}
