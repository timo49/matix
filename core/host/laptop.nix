{ config, pkgs, ...}:

let
  GetPath = x: ../../external/pkgs/${x}/default.nix;
  imps = [
      # applications
      "IDEs"
      "datagrip"
      # "unityhub" f unity
      "discord"
      "element"
      "minecraft"
      "steam"
      "spotube"
      "kuion"
      "obsidian"
      "libreoffice"
      "qutebrowser" # browser
      "CISCO" # cisco packet tracer 8.2.2

      # virtualization
      "virt-manager"
      "quickemu"
      "docker"

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
