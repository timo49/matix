{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bottom
    vitetris
  ];

  home-manager.sharedModules = [{
    programs.bottom = {
      enable = true;
    };
  }];
  services.openssh.enable = true;
}
