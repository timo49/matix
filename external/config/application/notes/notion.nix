{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    notion-app-enhanced
  ];
  
  home-manager.sharedModules = [{

  }];
}
