{ config, pkgs, ...}:
let
  vars = import ../../../../core/system/variables.nix;
in
{

  environment.systemPackages = [
    fastfetch
  ];

  home.sharedModules = [{
    home.file.".config/fastfetch/config.jsonc".text = ''

    '';
  }];
}
