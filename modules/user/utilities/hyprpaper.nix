{ config, pkgs, ...}:

{
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;

      preload =
      ["~/.nixos-modular-configuration/modules/dotfiles/wallpapers/nixos-background-dark.png"];

      wallpaper = [
        "eDP-1,~/.nixos-modular-configuration/modules/dotfiles/wallpapers/nixos-background-dark.png"
      ];
    };
  };
}
