{ config, pkgs, ... }:

{
  imports = [
    # core
    ../../modules/common/system.nix
    ../../modules/system/hardware/hardware-configuration.nix
    ../../modules/system/style/stylix.nix

    # virtualisation setup
    ../../modules/system/virt/virtualisation.nix

    # hyprland
    ../../modules/system/wm/hyprland.nix
  ];
}
