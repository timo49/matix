{ config, pkgs, ... }:

{
  imports = [
    # core
    ../../modules/common/system.nix
    ../../modules/system/packages.nix
    ../../modules/system/services.nix
    ../../modules/system/hardware-configuration.nix
    ../../modules/system/stylix.nix

    # desktop enviroment
    ../../modules/system/wm/hyprland.nix
  ];
}
