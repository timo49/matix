{ config, pkgs, ... }:

{
  imports = [
    ../../dotfiles/wm/hyprland.nix # the hyprland config
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {};
  };
}