{ config, pkgs, settings, ... }:

{
  # Information what to manage
  home.username = settings.username;
  home.homeDirectory = "/home/${settings.username}";

  # Home Manager release for this config, do not change without reading release notes!!!
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.sessionPath = [ "$HOME/.modular-nixos-configuration/bin" ];
}
