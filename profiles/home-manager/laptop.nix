{ config, pkgs, ... }:

{
  imports = [
    # minimum
    ../../modules/common/home-manager.nix

    # extra
    ../../modules/user/utilities/git.nix

    # hyprland  enviroment
    ../../modules/user/wm/hyprland.nix
    ../../modules/user/statusbar/waybar.nix
    ../../modules/user/utilities/hyprpaper.nix
    ../../modules/user/apps/kitty.nix
    ../../modules/user/shells/fish.nix
    ../../modules/user/utilities/starship.nix
    ../../modules/user/utilities/dunst.nix
    ../../modules/user/apps/wofi.nix

    # apps
    ../../modules/user/apps/qutebrowser.nix
    ../../modules/user/editor/neovim.nix
  ];

  home.packages = with pkgs; [
    # enviroment
    waybar
    hyprpaper

    # core apps
    kitty
    fish
    qutebrowser

    # extra
    acpi
    libnotify
    vesktop
  ];
}
