{ config, pkgs, ... }:

{
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
