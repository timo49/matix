{ config, pkgs, ...}:

let
  vars = import ../../common/variables.nix;
in {
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;

      preload = [
        "${vars.wallpaperPath}"
      ];

      wallpaper = [
        "e-DP1,${vars.wallpaperPath}"
      ];
    };
  };
}
