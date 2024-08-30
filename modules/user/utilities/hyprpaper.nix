{ config, pkgs, ...}:

{
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;

      preload = [
        "~/.modular-nixos-configuration/modules/dotfiles/wallpapers/nixos-background-dark.png"
        "~/.modular-nixos-configuration/modules/dotfiles/wallpapers/purple-leaves.png"
        "~/.modular-nixos-configuration/modules/dotfiles/wallpapers/dark-fantasy.png"
      ];

      wallpaper = [
        # "eDP-1,~/.modular-nixos-configuration/modules/dotfiles/wallpapers/nixos-background-dark.png"
        # "eDP-1,~/.modular-nixos-configuration/modules/dotfiles/wallpapers/purple-leaves.png"
        "eDP-1,~/.modular-nixos-configuration/modules/dotfiles/wallpapers/dark-fantasy.png"
      ];
    };
  };
}
