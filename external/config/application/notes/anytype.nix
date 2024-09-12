{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    anytype
  ];
  
  home-manager.sharedModules = [{

  }];
}
