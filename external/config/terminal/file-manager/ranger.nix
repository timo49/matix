{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    ranger;
  ];

  home-manager.sharedModules = [{
    programs.ranger = {
      enable = true;
    };
  }];
}
