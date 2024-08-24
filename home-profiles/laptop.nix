{ config, pkgs, ... }:

{
  imports = [
    # minimum
    ../modules/common/home-manager.nix

    # extra
    ../modules/user/utilities/git.nix
    ../modules/user/wm/hyprland.nix
    ../modules/user/apps/kitty.nix
    ../modules/user/apps/fish.nix
    ../modules/user/apps/starship.nix
  ];

  home.packages = [
    # core apps
    pkgs.kitty
    pkgs.fish
    pkgs.qutebrowser

    # extra
    pkgs.acpi
  ];
}