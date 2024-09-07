{ config, pkgs, ... }:

{
  imports = [
    # core
    ../../modules/common/system.nix
    ../../modules/system/hardware-configuration.nix
    ../../modules/system/stylix.nix

    # hyprland
    ../../modules/system/wm/hyprland.nix
  ];
}
