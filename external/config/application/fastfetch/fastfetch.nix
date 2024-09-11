{ config, pkgs, ...}:
let
  vars = import ../../../../core/system/variables.nix;
in
{

  environment.systemPackages = with pkgs; [
    fastfetch
  ];

  home-manager.sharedModules = [{
    home.file.".config/fastfetch/config.jsonc".text = ''

    '';
  }];
}
