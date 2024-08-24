{ config, pkgs, ... }:

{
  imports = [
    # minimum
    ../modules/common/system.nix
    ../modules/system/packages.nix
    ../modules/system/services.nix
    ../modules/system/hardware-configuration.nix

    # extra
    ../modules/system/wm/hyprland.nix
  ];
}