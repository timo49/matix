{ config, pkgs, ...}:

{
  imports = [
    # Color Manager
    ../../external/config/color-manager/stylix.nix

    # Desktop Enviroment
    ../../external/config/desktop-enviroment/window-manager/hyprland.nix
    ../../external/config/desktop-enviroment/status-bar/waybar.nix
    ../../external/config/desktop-enviroment/wallpaper-setter/hyprpaper.nix

  ];
}
