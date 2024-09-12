{ config, pkgs, ... }:

{
  environment.systemPackages = [
    rofi-wayland
  ];

  home-manager.sharedModules = [{
    
  }];
}
