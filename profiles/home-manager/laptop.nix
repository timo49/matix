{ config, pkgs, ... }:

{
  imports = [
    # minimum
    ../../modules/common/home-manager.nix

    # extra
    ../../modules/user/utilities/git.nix

    # hyprland  enviroment
    ../../modules/user/wm/hyprland.nix
    ../../modules/user/statusbar/waybar.nix
    ../../modules/user/utilities/hyprpaper.nix
    ../../modules/user/apps/kitty.nix
    ../../modules/user/shells/fish.nix
    ../../modules/user/utilities/starship.nix

    # apps
    ../../modules/user/apps/qutebrowser.nix
  ];

  home.packages = [
    # enviroment
    pkgs.waybar
    pkgs.hyprpaper

    # core apps
    pkgs.kitty
    pkgs.fish
    pkgs.qutebrowser

    # extra
    pkgs.acpi
  ];
}