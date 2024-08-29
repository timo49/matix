{ config, pkgs, ...}:

{
  programs.waybar = {
    enable = true;
    style = ../../dotfiles/statusbar/waybar/style.css;
    # settings = ../../dotfiles/statusbar/waybar/config.jsonc;
  };
  
  home.file.".config/waybar/config.jsonc".source = ../../dotfiles/statusbar/waybar/config.jsonc;
}
