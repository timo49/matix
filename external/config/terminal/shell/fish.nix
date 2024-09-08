{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    fish
  ];

  home-manager.sharedModules = [{
     programs.fish = {
      enable = true;

      shellInit = ''
        set -U fish_greeting
        cd
        starship init fish | source
      '';
    };
  }];
}
