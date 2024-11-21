{ config, pkgs, ...}:

let
  GetPath = x: ../../external/pkgs/${x}/default.nix;
  imps = [
      # applications
      "IDEs"
      "unityhub"
      "discord"
      "element"
      "minecraft"
      "spotube"
      "kuion"
      "obsidian"
      "libreoffice"
      "qutebrowser" # browser

      # virtualization
      "virt-manager"
      "quickemu"

      # desktop-environment
      "rofi" # app launcher
      "sddm" # diplay manager
      "dunst" # norification deamon
      "waybar" # status bar
      "hyprpaper" # wallpaper setter
      "hyprland" # window manager
      "stylix" # color manager

      # terminal
      "neovim" # editor
      "kitty" # emulator
      "starship" # prompt
      "fish" # shell
      "fastfetch"
      "bottom"
      
      # utility
      "git" # version manager
      "kanata" # keyboard manager
  ];
in
{
  imports = (map (imp: GetPath(imp)) imps);
}
