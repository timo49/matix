{ config, pkgs, ...}:

{
  imports = [
    # Color Manager
    ../../external/config/color-manager/stylix.nix

    # Desktop Enviroment
    ../../external/config/desktop-environment/window-manager/hyprland.nix
    ../../external/config/desktop-environment/status-bar/waybar.nix
    ../../external/config/desktop-environment/wallpaper-setter/hyprpaper.nix
    ../../external/config/desktop-environment/notification-daemon/dunst.nix

  ];
}
