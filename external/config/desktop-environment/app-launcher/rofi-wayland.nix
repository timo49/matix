{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rofi-wayland
  ];

  home-manager.sharedModules = [{
    
  }];
}
