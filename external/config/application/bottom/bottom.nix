{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bottom
  ];

  home-manager.sharedModules = [{
    programs.bottom = {
      enable = true;
    };
  }];
}
