{ config, pkgs, ...}:

{

  programs.kitty = 

  let
    vars = import ../../common/variables.nix;
  in {
    enable = true;

    settings = {
      foreground = "#${config.stylix.base16Scheme.base05}";
      background = "#${config.stylix.base16Scheme.base00}";
    };

    extraConfig = ''
      background_opacity ${vars.opacity}
      font_family family = "Hack Nerd Font"
      shell fish
      confirm_os_window_close 0
    '';
  };
}
