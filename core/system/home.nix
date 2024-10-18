{ config, pkgs, ... }:

let
  user = import "${builtins.getEnv "PWD"}/users/user.nix";
  vars = import ../../users/${user.user}/variables.nix;
in
{
  # Information what to manage
  home.username = vars.username;
  home.homeDirectory = "/home/${vars.username}";

  # Home Manager release for this config, do not change without reading release notes!!!
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.sessionPath = [
        "$HOME/.modular-nixos-configuration/bin"
      ];

}
