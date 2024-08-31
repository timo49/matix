{ config, pkgs, ... }:

{
  imports = [
    # minimum
    ../../modules/common/home-manager.nix

    # extra
    ../../modules/user/utilities/git.nix

    # desktop enviroment
    ../../modules/user/wm/hyprland.nix
    ../../modules/user/statusbar/waybar.nix
    ../../modules/user/utilities/hyprpaper.nix
    ../../modules/user/apps/kitty.nix
    ../../modules/user/shells/fish.nix
    ../../modules/user/utilities/starship.nix
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
