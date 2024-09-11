{ config, pkgs, ...}:

let
  vars = import ../../../../core/system/variables.nix;
in {
  environment.systemPackages = with pkgs; [
    hyprpaper
  ];

  home-manager.sharedModules = [{
    services.hyprpaper = {
      enable = true;

      settings = {
        ipc = "on";
        splash = false;
        splash_offset = 2.0;

        preload = [
          "~/.modular-nixos-configuration/external/theme/wallpaper/${vars.wallpaper}"
        ];

        wallpaper = [
          "eDP-1,~/.modular-nixos-configuration/external/theme/wallpaper/${vars.wallpaper}"
        ];
      };
    };
  }];
}
